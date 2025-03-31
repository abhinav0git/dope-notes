import AuthForm from "@/components/AuthForm";
import { Card, CardHeader, CardTitle } from "@/components/ui/card";

function SignUpPage() {
    return (
        <div className="flex flex-1 flex-col items-center mt-20">
            <Card className="w-full max-w-md">
                <CardHeader>
                    <CardTitle className="text-2xl text-center">SignUp</CardTitle>
                </CardHeader>
                <AuthForm type="sign-up" />
            </Card>
        </div>
    )
}

export default SignUpPage;
