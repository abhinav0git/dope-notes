[33mcommit 4f1cc5dbee79560a7b8add7dee6266fff34a74bb[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: abhinav <abhinav07c@gmail.com>
Date:   Mon Mar 31 20:19:36 2025 +0530

    feat: signup and login page

[1mdiff --git a/package.json b/package.json[m
[1mindex fd71df5..e7c0f43 100644[m
[1m--- a/package.json[m
[1m+++ b/package.json[m
[36m@@ -10,6 +10,7 @@[m
   },[m
   "dependencies": {[m
     "@radix-ui/react-dropdown-menu": "^2.1.6",[m
[32m+[m[32m    "@radix-ui/react-label": "^2.1.2",[m
     "@radix-ui/react-slot": "^1.1.2",[m
     "class-variance-authority": "^0.7.1",[m
     "clsx": "^2.1.1",[m
[1mdiff --git a/pnpm-lock.yaml b/pnpm-lock.yaml[m
[1mindex e57c39f..b7a3ad5 100644[m
[1m--- a/pnpm-lock.yaml[m
[1m+++ b/pnpm-lock.yaml[m
[36m@@ -11,6 +11,9 @@[m [mimporters:[m
       '@radix-ui/react-dropdown-menu':[m
         specifier: ^2.1.6[m
         version: 2.1.6(@types/react-dom@19.0.4(@types/react@19.0.12))(@types/react@19.0.12)(react-dom@19.1.0(react@19.1.0))(react@19.1.0)[m
[32m+[m[32m      '@radix-ui/react-label':[m
[32m+[m[32m        specifier: ^2.1.2[m
[32m+[m[32m        version: 2.1.2(@types/react-dom@19.0.4(@types/react@19.0.12))(@types/react@19.0.12)(react-dom@19.1.0(react@19.1.0))(react@19.1.0)[m
       '@radix-ui/react-slot':[m
         specifier: ^1.1.2[m
         version: 1.1.2(@types/react@19.0.12)(react@19.1.0)[m
[36m@@ -458,6 +461,19 @@[m [mpackages:[m
       '@types/react':[m
         optional: true[m
 [m
[32m+[m[32m  '@radix-ui/react-label@2.1.2':[m
[32m+[m[32m    resolution: {integrity: sha512-zo1uGMTaNlHehDyFQcDZXRJhUPDuukcnHz0/jnrup0JA6qL+AFpAnty+7VKa9esuU5xTblAZzTGYJKSKaBxBhw==}[m
[32m+[m[32m    peerDependencies:[m
[32m+[m[32m      '@types/react': '*'[m
[32m+[m[32m      '@types/react-dom': '*'[m
[32m+[m[32m      react: ^16.8 || ^17.0 || ^18.0 || ^19.0 || ^19.0.0-rc[m
[32m+[m[32m      react-dom: ^16.8 || ^17.0 || ^18.0 || ^19.0 || ^19.0.0-rc[m
[32m+[m[32m    peerDependenciesMeta:[m
[32m+[m[32m      '@types/react':[m
[32m+[m[32m        optional: true[m
[32m+[m[32m      '@types/react-dom':[m
[32m+[m[32m        optional: true[m
[32m+[m
   '@radix-ui/react-menu@2.1.6':[m
     resolution: {integrity: sha512-tBBb5CXDJW3t2mo9WlO7r6GTmWV0F0uzHZVFmlRmYpiSK1CDU5IKojP1pm7oknpBOrFZx/YgBRW9oorPO2S/Lg==}[m
     peerDependencies:[m
[36m@@ -2450,6 +2466,15 @@[m [msnapshots:[m
     optionalDependencies:[m
       '@types/react': 19.0.12[m
 [m
[32m+[m[32m  '@radix-ui/react-label@2.1.2(@types/react-dom@19.0.4(@types/react@19.0.12))(@types/react@19.0.12)(react-dom@19.1.0(react@19.1.0))(react@19.1.0)':[m
[32m+[m[32m    dependencies:[m
[32m+[m[32m      '@radix-ui/react-primitive': 2.0.2(@types/react-dom@19.0.4(@types/react@19.0.12))(@types/react@19.0.12)(react-dom@19.1.0(react@19.1.0))(react@19.1.0)[m
[32m+[m[32m      react: 19.1.0[m
[32m+[m[32m      react-dom: 19.1.0(react@19.1.0)[m
[32m+[m[32m    optionalDependencies:[m
[32m+[m[32m      '@types/react': 19.0.12[m
[32m+[m[32m      '@types/react-dom': 19.0.4(@types/react@19.0.12)[m
[32m+[m
   '@radix-ui/react-menu@2.1.6(@types/react-dom@19.0.4(@types/react@19.0.12))(@types/react@19.0.12)(react-dom@19.1.0(react@19.1.0))(react@19.1.0)':[m
     dependencies:[m
       '@radix-ui/primitive': 1.1.1[m
[1mdiff --git a/src/app/login/page.tsx b/src/app/login/page.tsx[m
[1mnew file mode 100644[m
[1mindex 0000000..8e6883d[m
[1m--- /dev/null[m
[1m+++ b/src/app/login/page.tsx[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32mimport AuthForm from "@/components/AuthForm";[m
[32m+[m[32mimport { Card, CardHeader, CardTitle } from "@/components/ui/card";[m
[32m+[m
[32m+[m[32mfunction LoginPage() {[m
[32m+[m[32m    return ([m
[32m+[m[32m        <div className="flex flex-1 flex-col items-center mt-20">[m
[32m+[m[32m            <Card className="w-full max-w-md">[m
[32m+[m[32m                <CardHeader>[m
[32m+[m[32m                    <CardTitle className="text-2xl text-center">Login</CardTitle>[m
[32m+[m[32m                </CardHeader>[m
[32m+[m[32m                <AuthForm type="login" />[m
[32m+[m[32m            </Card>[m
[32m+[m[32m        </div>[m
[32m+[m[32m    )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default LoginPage;[m
[1mdiff --git a/src/app/sign-up/page.tsx b/src/app/sign-up/page.tsx[m
[1mnew file mode 100644[m
[1mindex 0000000..ec8459c[m
[1m--- /dev/null[m
[1m+++ b/src/app/sign-up/page.tsx[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32mimport AuthForm from "@/components/AuthForm";[m
[32m+[m[32mimport { Card, CardHeader, CardTitle } from "@/components/ui/card";[m
[32m+[m
[32m+[m[32mfunction SignUpPage() {[m
[32m+[m[32m    return ([m
[32m+[m[32m        <div className="flex flex-1 flex-col items-center mt-20">[m
[32m+[m[32m            <Card className="w-full max-w-md">[m
[32m+[m[32m                <CardHeader>[m
[32m+[m[32m                    <CardTitle className="text-2xl text-center">SignUp</CardTitle>[m
[32m+[m[32m                </CardHeader>[m
[32m+[m[32m                <AuthForm type="sign-up" />[m
[32m+[m[32m            </Card>[m
[32m+[m[32m        </div>[m
[32m+[m[32m    )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default SignUpPage;[m
[1mdiff --git a/src/components/AuthForm.tsx b/src/components/AuthForm.tsx[m
[1mnew file mode 100644[m
[1mindex 0000000..da9b5ba[m
[1m--- /dev/null[m
[1m+++ b/src/components/AuthForm.tsx[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m"use client"[m
[32m+[m
[32m+[m[32mimport { toast } from "sonner";[m
[32m+[m[32mimport { useRouter } from "next/navigation";[m
[32m+[m[32mimport { CardContent, CardFooter } from "./ui/card";[m
[32m+[m[32mimport { Input } from "@/components/ui/input"[m
[32m+[m[32mimport { Label } from "@/components/ui/label"[m
[32m+[m[32mimport { useTransition } from "react";[m
[32m+[m[32mimport { Button } from "./ui/button";[m
[32m+[m[32mimport { Loader2 } from "lucide-react";[m
[32m+[m[32mimport Link from "next/link";[m
[32m+[m
[32m+[m[32mtype Props = {[m
[32m+[m[32m    type: "login" | "sign-up"[m
[32m+[m[32m};[m
[32m+[m
[32m+[m[32mfunction AuthForm({ type }: Props) {[m
[32m+[m[32m    const isLoginForm = type === "login";[m
[32m+[m[32m    console.log(isLoginForm);[m
[32m+[m[32m    const router = useRouter();[m
[32m+[m[32m    const [isPending, startTransition] = useTransition();[m
[32m+[m
[32m+[m[32m    const handleSubmit = async (formData: FormData) => {[m
[32m+[m[32m        toast.success("Welcome User!");[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    return ([m
[32m+[m[32m        <form action={handleSubmit}>[m
[32m+[m[32m            <CardContent className="grid w-full items-center gap-4">[m
[32m+[m[32m                <div className="flex flex-col space-y-1.5">[m
[32m+[m[32m                    <Label htmlFor="email">Email</Label>[m
[32m+[m[32m                    <Input[m
[32m+[m[32m                        id="email"[m
[32m+[m[32m                        name="email"[m
[32m+[m[32m                        type="email"[m
[32m+[m[32m                        placeholder="Enter your email"[m
[32m+[m[32m                        className="mt-2"[m
[32m+[m[32m                        required[m
[32m+[m[32m                        disabled={isPending}[m
[32m+[m[32m                    />[m
[32m+[m[32m                </div>[m
[32m+[m[32m                <div className="flex flex-col space-1.5">[m
[32m+[m[32m                    <Label htmlFor="password">Password</Label>[m
[32m+[m[32m                    <Input[m
[32m+[m[32m                        id="password"[m
[32m+[m[32m                        name="password"[m
[32m+[m[32m                        type="password"[m
[32m+[m[32m                        placeholder="Enter your password"[m
[32m+[m[32m                        className="mt-2"[m
[32m+[m[32m                        autoComplete="current-password"[m
[32m+[m[32m                        required[m
[32m+[m[32m                        disabled={isPending}[m
[32m+[m[32m                    />[m
[32m+[m[32m                </div>[m
[32m+[m[32m            </CardContent>[m
[32m+[m[32m            <CardFooter className="flex flex-col gap-6 mt-4">[m
[32m+[m[32m                <Button className="w-full">[m
[32m+[m[32m                    {isPending ? <Loader2 className="animate-spin" /> : isLoginForm ? "Login" : "Sign Up"}[m
[32m+[m[32m                </Button>[m
[32m+[m[32m                <p className="text-xs flex flex-row items-center gap-1">[m
[32m+[m[32m                    {isLoginForm ? "Don't have an account yet?" : "Already have an account?"}[m
[32m+[m[32m                    <Link[m
[32m+[m[32m                        href={isLoginForm ? "/sign-up" : "/login"}[m
[32m+[m[32m                        className={`text-blue-500 underline ${isPending ? "pointer-events-none" : ""}`}>[m
[32m+[m[32m                        {isLoginForm ? "Sign Up" : "Login"}[m
[32m+[m[32m                    </Link>[m
[32m+[m[32m                </p>[m
[32m+[m[32m            </CardFooter>[m
[32m+[m[32m        </form>[m
[32m+[m[32m    );[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default AuthForm;[m
[1mdiff --git a/src/components/LogoutButton.tsx b/src/components/LogoutButton.tsx[m
[1mindex fe0231f..82815ca 100644[m
[1m--- a/src/components/LogoutButton.tsx[m
[1m+++ b/src/components/LogoutButton.tsx[m
[36m@@ -1,7 +1,7 @@[m
 "use client"; //as we are using useState hook[m
 [m
 import { Button } from "@/components/ui/button";[m
[31m-import { Loader2Icon } from "lucide-react";[m
[32m+[m[32mimport { Loader2 } from "lucide-react";[m
 import { useState } from "react";[m
 import { toast } from "sonner";[m
 import { useRouter } from "next/navigation";[m
[36m@@ -14,7 +14,7 @@[m [mfunction LogoutButton() {[m
     const handleLogout = async () => {[m
         setLoading(true);[m
 [m
[31m-        await new Promise((resolve) => setTimeout(resolve, 1500)); // Simulate a network request[m
[32m+[m[32m        await new Promise((resolve) => setTimeout(resolve, 1000)); // Simulate a network request[m
 [m
         const errorMsg = null;[m
 [m
[36m@@ -37,7 +37,7 @@[m [mfunction LogoutButton() {[m
             disabled={loading}[m
             className="w-18"[m
         >[m
[31m-            {loading ? (<Loader2Icon className="animate-spin" />) : "LogOut"}[m
[32m+[m[32m            {loading ? (<Loader2 className="animate-spin" />) : "LogOut"}[m
         </Button>[m
     )[m
 }[m
[1mdiff --git a/src/components/ui/card.tsx b/src/components/ui/card.tsx[m
[1mnew file mode 100644[m
[1mindex 0000000..d05bbc6[m
[1m--- /dev/null[m
[1m+++ b/src/components/ui/card.tsx[m
[36m@@ -0,0 +1,92 @@[m
[32m+[m[32mimport * as React from "react"[m
[32m+[m
[32m+[m[32mimport { cn } from "@/lib/utils"[m
[32m+[m
[32m+[m[32mfunction Card({ className, ...props }: React.ComponentProps<"div">) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <div[m
[32m+[m[32m      data-slot="card"[m
[32m+[m[32m      className={cn([m
[32m+[m[32m        "bg-card text-card-foreground flex flex-col gap-6 rounded-xl border py-6 shadow-sm",[m
[32m+[m[32m        className[m
[32m+[m[32m      )}[m
[32m+[m[32m      {...props}[m
[32m+[m[32m    />[m
[32m+[m[32m  )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction CardHeader({ className, ...props }: React.ComponentProps<"div">) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <div[m
[32m+[m[32m      data-slot="card-header"[m
[32m+[m[32m      className={cn([m
[32m+[m[32m        "@container/card-header grid auto-rows-min grid-rows-[auto_auto] items-start gap-1.5 px-6 has-data-[slot=card-action]:grid-cols-[1fr_auto] [.border-b]:pb-6",[m
[32m+[m[32m        className[m
[32m+[m[32m      )}[m
[32m+[m[32m      {...props}[m
[32m+[m[32m    />[m
[32m+[m[32m  )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction CardTitle({ className, ...props }: React.ComponentProps<"div">) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <div[m
[32m+[m[32m      data-slot="card-title"[m
[32m+[m[32m      className={cn("leading-none font-semibold", className)}[m
[32m+[m[32m      {...props}[m
[32m+[m[32m    />[m
[32m+[m[32m  )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction CardDescription({ className, ...props }: React.ComponentProps<"div">) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <div[m
[32m+[m[32m      data-slot="card-description"[m
[32m+[m[32m      className={cn("text-muted-foreground text-sm", className)}[m
[32m+[m[32m      {...props}[m
[32m+[m[32m    />[m
[32m+[m[32m  )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction CardAction({ className, ...props }: React.ComponentProps<"div">) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <div[m
[32m+[m[32m      data-slot="card-action"[m
[32m+[m[32m      className={cn([m
[32m+[m[32m        "col-start-2 row-span-2 row-start-1 self-start justify-self-end",[m
[32m+[m[32m        className[m
[32m+[m[32m      )}[m
[32m+[m[32m      {...props}[m
[32m+[m[32m    />[m
[32m+[m[32m  )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction CardContent({ className, ...props }: React.ComponentProps<"div">) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <div[m
[32m+[m[32m      data-slot="card-content"[m
[32m+[m[32m      className={cn("px-6", className)}[m
[32m+[m[32m      {...props}[m
[32m+[m[32m    />[m
[32m+[m[32m  )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction CardFooter({ className, ...props }: React.ComponentProps<"div">) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <div[m
[32m+[m[32m      data-slot="card-footer"[m
[32m+[m[32m      className={cn("flex items-center px-6 [.border-t]:pt-6", className)}[m
[32m+[m[32m      {...props}[m
[32m+[m[32m    />[m
[32m+[m[32m  )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport {[m
[32m+[m[32m  Card,[m
[32m+[m[32m  CardHeader,[m
[32m+[m[32m  CardFooter,[m
[32m+[m[32m  CardTitle,[m
[32m+[m[32m  CardAction,[m
[32m+[m[32m  CardDescription,[m
[32m+[m[32m  CardContent,[m
[32m+[m[32m}[m
[1mdiff --git a/src/components/ui/input.tsx b/src/components/ui/input.tsx[m
[1mnew file mode 100644[m
[1mindex 0000000..03295ca[m
[1m--- /dev/null[m
[1m+++ b/src/components/ui/input.tsx[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32mimport * as React from "react"[m
[32m+[m
[32m+[m[32mimport { cn } from "@/lib/utils"[m
[32m+[m
[32m+[m[32mfunction Input({ className, type, ...props }: React.ComponentProps<"input">) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <input[m
[32m+[m[32m      type={type}[m
[32m+[m[32m      data-slot="input"[m
[32m+[m[32m      className={cn([m
[32m+[m[32m        "file:text-foreground placeholder:text-muted-foreground selection:bg-primary selection:text-primary-foreground dark:bg-input/30 border-input flex h-9 w-full min-w-0 rounded-md border bg-transparent px-3 py-1 text-base shadow-xs transition-[color,box-shadow] outline-none file:inline-flex file:h-7 file:border-0 file:bg-transparent file:text-sm file:font-medium disabled:pointer-events-none disabled:cursor-not-allowed disabled:opacity-50 md:text-sm",[m
[32m+[m[32m        "focus-visible:border-ring focus-visible:ring-ring/50 focus-visible:ring-[3px]",[m
[32m+[m[32m        "aria-invalid:ring-destructive/20 dark:aria-invalid:ring-destructive/40 aria-invalid:border-destructive",[m
[32m+[m[32m        className[m
[32m+[m[32m      )}[m
[32m+[m[32m      {...props}[m
[32m+[m[32m    />[m
[32m+[m[32m  )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport { Input }[m
[1mdiff --git a/src/components/ui/label.tsx b/src/components/ui/label.tsx[m
[1mnew file mode 100644[m
[1mindex 0000000..fb5fbc3[m
[1m--- /dev/null[m
[1m+++ b/src/components/ui/label.tsx[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32m"use client"[m
[32m+[m
[32m+[m[32mimport * as React from "react"[m
[32m+[m[32mimport * as LabelPrimitive from "@radix-ui/react-label"[m
[32m+[m
[32m+[m[32mimport { cn } from "@/lib/utils"[m
[32m+[m
[32m+[m[32mfunction Label({[m
[32m+[m[32m  className,[m
[32m+[m[32m  ...props[m
[32m+[m[32m}: React.ComponentProps<typeof LabelPrimitive.Root>) {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <LabelPrimitive.Root[m
[32m+[m[32m      data-slot="label"[m
[32m+[m[32m      className={cn([m
[32m+[m[32m        "flex items-center gap-2 text-sm leading-none font-medium select-none group-data-[disabled=true]:pointer-events-none group-data-[disabled=true]:opacity-50 peer-disabled:cursor-not-allowed peer-disabled:opacity-50",[m
[32m+[m[32m        className[m
[32m+[m[32m      )}[m
[32m+[m[32m      {...props}[m
[32m+[m[32m    />[m
[32m+[m[32m  )[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport { Label }[m
