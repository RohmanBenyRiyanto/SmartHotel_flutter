module.exports = {
    lang: 'en-US',
    title: 'Smotel',
    description: 'Documentation of Smotel',
    head: [
        ['link', {
            rel: 'icon',
            href: 'https://raw.githubusercontent.com/RohmanBenyRiyanto/SmartHotel_flutter/main/assets/images/logo.png'
        }]
    ],

    themeConfig: {
        logo: 'https://raw.githubusercontent.com/RohmanBenyRiyanto/SmartHotel_flutter/main/assets/images/logo.png',
        navbar: [
            // NavbarItem
            {
                text: 'Github',
                link: 'https://github.com/RohmanBenyRiyanto/SmartHotel_flutter',
            },
            // string - page file path
            //   '/bar/README.md',
        ],
        sidebar: [
            // SidebarItem
            {
                text: 'Intro',
                // link: '/home-page/',
                children: [
                    // SidebarItem
                    {
                        text: 'Apa itu Smotel?',
                        link: '../README.md',
                    },
                ],
            },
            // SidebarItem
            {
                text: 'Dokumentasi',
                // link: '/home-page/',
                children: [{
                        text: 'Splash Screen',
                        link: '/splash/splash.md',
                    },
                    // SidebarItem
                    {
                        text: 'Authentication',
                        children: [{
                                text: 'Login',
                                link: '/auth-page/login.md',
                            },
                            {
                                text: 'Register',
                                link: '/auth-page/register.md',
                            },
                            {
                                text: 'Lupa Password',
                                link: '/auth-page/forgot.md',
                            },
                        ],
                    },
                    {
                        text: 'Home',
                        children: [{
                                text: 'Navbar',
                                link: '/home-page/navbar.md',
                            },
                            {
                                text: 'Home',
                                link: '/home-page/home-page.md',
                            },
                            {
                                text: 'Detail Hotel',
                                link: '/hotel/detailhotel.md',
                                children: [{
                                        text: 'Booking',
                                        link: '/hotel/booking.md',
                                    },
                                    {
                                        text: 'Pesanan',
                                        link: '/hotel/pesanan.md',
                                    },
                                ],
                            },
                            {
                                text: 'History',
                                link: '/home-page/history.md',
                            },
                            {
                                text: 'MyScan',
                                link: '/home-page/myscan.md',
                            },
                            {
                                text: 'MyRoom',
                                link: '/home-page/myroom.md',
                                children: [{
                                        text: 'Kontrol Lampu',
                                        link: '/myroom/lampu.md',
                                    },
                                    {
                                        text: 'Kontrol AC',
                                        link: '/myroom/ac.md',
                                    },
                                ],
                            },
                            {
                                text: 'Profile',
                                link: '/home-page/profile.md',
                            },
                        ],
                    },
                ],
            },
            {
                text: 'Credit',
                // link: '/home-page/',
                children: [
                    // SidebarItem
                    {
                        text: 'Package',
                        link: '/credit/package.md',
                    },
                    {
                        text: 'Team',
                        link: '/credit/team.md',
                    },
                ],
            },
        ],
    },
}