"use client"; //as we are using useState hook

import { Button } from "@/components/ui/button";
import { Loader2Icon } from "lucide-react";
import { useState } from "react";
import { toast } from "sonner";
import { useRouter } from "next/navigation";

function LogoutButton() {

    const [loading, setLoading] = useState(false);
    const router = useRouter();

    const handleLogout = async () => {
        setLoading(true);

        await new Promise((resolve) => setTimeout(resolve, 1500)); // Simulate a network request

        const errorMsg = null;

        if (!errorMsg) {
            toast.success("Logged out successfully!");
            router.push("/");
        }
        else {
            toast.error(errorMsg);
        }

        console.log("logging out...")
        setLoading(false);
    }

    return (
        <Button
            variant="outline"
            onClick={handleLogout}
            disabled={loading}
            className="w-18"
        >
            {loading ? (<Loader2Icon className="animate-spin" />) : "LogOut"}
        </Button>
    )
}

export default LogoutButton
