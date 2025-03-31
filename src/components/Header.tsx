import Link from 'next/link';
import Image from 'next/image';
import { shadow } from '@/styles/utils';
import { Button } from '@/components/ui/button';
import { ModeToggle } from '@/components/DarkModeToggle';
import LogoutButton from '@/components/LogoutButton';

const Header = () => {
    const user = 1;

    return (
        <header
            className="relative flex h-24 w-full items-center justify-between bg-popover px-3 sm:px-8"
            style={{ boxShadow: shadow }}
        >
            <Link href="/" className='flex item-end gap-2'>
                <Image
                    src="/android-chrome-192x192.png"
                    alt="Logo"
                    width={60}
                    height={60}
                    className='rounded-full'
                    priority={true}
                />
                <h1 className="flex flex-col pb-1 text-2xl font-semibold leading-6">
                    DOPE<span> Notes </span>
                </h1>
            </Link>

            <div className="flex gap-4">
                {user ?
                    (<LogoutButton />) :
                    (
                        <>
                            <Button asChild>
                                <Link href="/sign-up" className='hidden sm:block'>Sign-Up</Link>
                            </Button>
                            <Button asChild variant="outline">
                                <Link href="/login">Login</Link>
                            </Button>
                        </>
                    )}
                <ModeToggle />
            </div>
        </header>
    )
}

export default Header