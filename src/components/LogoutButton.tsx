"use client"; //as we are using useState hook

import { Button } from "@/components/ui/button";
import { Loader2 } from "lucide-react";
import { useState } from "react";
import { toast } from "sonner";
import { useRouter } from "next/navigation";
import { logOutAction } from "@/actions/users";

function LogOutButton() {

    const [loading, setLoading] = useState(false);
    const router = useRouter();

    const handleLogout = async () => {
        setLoading(true);

        const { errorMsg } = await logOutAction();

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
            {loading ? (<Loader2 className="animate-spin" />) : "LogOut"}
        </Button>
    )
}

export default LogOutButton
