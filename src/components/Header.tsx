import Link from 'next/link'
import Image from 'next/image'

const Header = () => {
    return (
        <header>
            <Link href="/">
                <Image
                    src="/android-chrome-192x192.png"
                    alt="Logo"
                    width={60}
                    height={60}
                    className='rounded-full'
                    priority={true}
                />
            </Link>
        </header>
    )
}

export default Header