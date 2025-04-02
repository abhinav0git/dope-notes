import { clsx, type ClassValue } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}

export const handleError = (error: unknown) => {
    if (error instanceof Error) {
        return {error : error.message};
    }
    return "An unknown error occurred";
}