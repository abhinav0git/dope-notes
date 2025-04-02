"use client"

import { toast } from "sonner";
import { useRouter } from "next/navigation";
import { CardContent, CardFooter } from "./ui/card";
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { useTransition } from "react";
import { Button } from "./ui/button";
import { Loader2 } from "lucide-react";
import Link from "next/link";
import { loginAction, signUpAction } from "@/actions/users";

type Props = {
    type: "login" | "sign-up"
};

function AuthForm({ type }: Props) {
    const isLoginForm = type === "login";
    console.log(isLoginForm ? "Login Form" : "Sign Up Form");

    const router = useRouter();
    const [isPending, startTransition] = useTransition();

    const handleSubmit = async (formData: FormData) => {


        startTransition(async () => {
            const email = formData.get("email") as string;
            const password = formData.get("password") as string;

            let errorMessage;
            let title;
            let description;

            if (isLoginForm) {
                errorMessage = (await loginAction(email, password)).errorMessage;
                title = "Logged in";
                description = "You have successfully logged in.";
            }
            else {
                errorMessage = (await signUpAction(email, password)).errorMessage;
                title = "Signed Up";
                description = "Check your email for verification.";
            }

            if (!errorMessage) {
                toast.message(title, {
                    description
                });
                router.replace("/");
            }
            else {
                toast.error(errorMessage)
            }
        });
    }

    return (
        <form action={handleSubmit}>
            <CardContent className="grid w-full items-center gap-4">
                <div className="flex flex-col space-y-1.5">
                    <Label htmlFor="email">Email</Label>
                    <Input
                        id="email"
                        name="email"
                        type="email"
                        placeholder="Enter your email"
                        className="mt-2"
                        required
                        disabled={isPending}
                    />
                </div>
                <div className="flex flex-col space-1.5">
                    <Label htmlFor="password">Password</Label>
                    <Input
                        id="password"
                        name="password"
                        type="password"
                        placeholder="Enter your password"
                        className="mt-2"
                        required
                        disabled={isPending}
                    />
                </div>
            </CardContent>
            <CardFooter className="flex flex-col gap-6 mt-4">
                <Button className="w-full">
                    {isPending ? <Loader2 className="animate-spin" /> : isLoginForm ? "Login" : "Sign Up"}
                </Button>
                <p className="text-xs flex flex-row items-center gap-1">
                    {isLoginForm ? "Don't have an account yet?" : "Already have an account?"}
                    <Link
                        href={isLoginForm ? "/sign-up" : "/login"}
                        className={`text-blue-500 underline ${isPending ? "pointer-events-none" : ""}`}>
                        {isLoginForm ? "Sign Up" : "Login"}
                    </Link>
                </p>
            </CardFooter>
        </form>
    );
}

export default AuthForm;
// function signupAction(email: string, password: string) {
//     throw new Error("Function not implemented.");
// }

