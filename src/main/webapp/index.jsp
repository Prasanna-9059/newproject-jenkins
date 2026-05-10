<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>LUMINA — Premium E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-primary: #fafbfc;
            --bg-surface: #ffffff;
            --text-primary: #0a1c2f;
            --text-secondary: #54657e;
            --accent: #4361ee;
            --accent-glow: #4cc9f0;
            --accent-gradient: linear-gradient(135deg, #4361ee, #4cc9f0);
            --border-light: rgba(0, 0, 0, 0.05);
            --card-shadow: 0 20px 35px -12px rgba(0, 0, 0, 0.05), 0 1px 2px rgba(0, 0, 0, 0.02);
            --hover-lift: translateY(-6px);
            --radius-card: 24px;
            --radius-element: 16px;
        }

        [data-theme="dark"] {
            --bg-primary: #0a0f1a;
            --bg-surface: #141b2b;
            --text-primary: #f0f3fa;
            --text-secondary: #8e9dbb;
            --border-light: rgba(255, 255, 255, 0.05);
            --card-shadow: 0 20px 35px -12px rgba(0, 0, 0, 0.3);
        }

        body {
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            background: var(--bg-primary);
            color: var(--text-primary);
            transition: background 0.2s ease, color 0.2s ease;
            line-height: 1.5;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* ===== GLASS HEADER ===== */
        .glass-header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(16px);
            background: rgba(10, 15, 26, 0.65);
            border-bottom: 1px solid var(--border-light);
            transition: all 0.2s;
        }
        [data-theme="light"] .glass-header {
            background: rgba(255, 255, 255, 0.7);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 14px 0;
            gap: 20px;
            flex-wrap: wrap;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 800;
            background: var(--accent-gradient);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .nav-links {
            display: flex;
            gap: 8px;
            list-style: none;
        }
        .nav-links a {
            padding: 8px 20px;
            border-radius: 40px;
            font-weight: 600;
            transition: 0.2s;
            color: var(--text-primary);
        }
        .nav-links a:hover, .nav-links a.active {
            background: var(--accent);
            color: white;
        }

        .search-wrapper {
            display: flex;
            align-items: center;
            background: var(--bg-surface);
            border-radius: 60px;
            padding: 6px 16px;
            gap: 10px;
            border: 1px solid var(--border-light);
            transition: 0.2s;
        }
        .search-wrapper input {
            background: transparent;
            border: none;
            outline: none;
            font-size: 0.9rem;
            width: 200px;
            color: var(--text-primary);
        }
        .theme-toggle {
            background: var(--bg-surface);
            border: 1px solid var(--border-light);
            border-radius: 60px;
            padding: 8px 12px;
            cursor: pointer;
            display: flex;
            gap: 6px;
        }

        .cart-icon {
            position: relative;
            background: var(--bg-surface);
            padding: 8px 12px;
            border-radius: 60px;
            cursor: pointer;
        }
        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent);
            font-size: 10px;
            font-weight: bold;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 1.6rem;
            cursor: pointer;
            color: var(--text-primary);
        }

        /* HERO section — modern gradient */
        .hero-modern {
            background: radial-gradient(circle at 80% 20%, rgba(67, 97, 238, 0.08), transparent 70%);
            padding: 70px 0 50px;
            text-align: center;
        }
        .hero-modern h1 {
            font-size: 3.5rem;
            font-weight: 800;
            background: linear-gradient(145deg, var(--text-primary), var(--accent));
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }
        .btn-group {
            display: flex;
            justify-content: center;
            gap: 16px;
            margin-top: 28px;
        }
        .btn-primary {
            background: var(--accent-gradient);
            border: none;
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 700;
            color: white;
            cursor: pointer;
            transition: 0.2s;
            box-shadow: 0 8px 18px rgba(67, 97, 238, 0.25);
        }
        .btn-outline {
            background: transparent;
            border: 1.5px solid var(--accent);
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 700;
            cursor: pointer;
            color: var(--text-primary);
        }

        /* Section titles */
        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }
        .section-header h2 {
            font-size: 2.2rem;
            font-weight: 700;
        }
        .section-header p {
            color: var(--text-secondary);
        }

        /* Categories grid - glass cards */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
        }
        .category-card {
            background: var(--bg-surface);
            backdrop-filter: blur(8px);
            padding: 28px 16px;
            text-align: center;
            border-radius: var(--radius-card);
            transition: all 0.25s;
            cursor: pointer;
            border: 1px solid var(--border-light);
            box-shadow: var(--card-shadow);
        }
        .category-card:hover {
            transform: var(--hover-lift);
            border-color: var(--accent);
        }
        .category-card i {
            font-size: 2.5rem;
            background: var(--accent-gradient);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            margin-bottom: 12px;
        }

        /* Product grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 32px;
        }
        .product-card {
            background: var(--bg-surface);
            border-radius: var(--radius-card);
            overflow: hidden;
            transition: all 0.3s cubic-bezier(0.2, 0, 0, 1);
            border: 1px solid var(--border-light);
            box-shadow: var(--card-shadow);
        }
        .product-card:hover {
            transform: var(--hover-lift);
        }
        .product-img {
            height: 240px;
            width: 100%;
            object-fit: cover;
            transition: 0.3s;
        }
        .product-info {
            padding: 20px;
        }
        .price {
            font-weight: 800;
            font-size: 1.5rem;
            color: var(--accent);
        }
        .old-price {
            text-decoration: line-through;
            font-size: 0.85rem;
            color: var(--text-secondary);
            margin-left: 8px;
        }
        .rating {
            color: #f5b342;
            font-size: 0.8rem;
        }
        .add-to-cart {
            width: 100%;
            background: var(--bg-primary);
            border: 1px solid var(--border-light);
            padding: 12px;
            border-radius: 60px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            margin-top: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .add-to-cart:hover {
            background: var(--accent);
            color: white;
            border-color: var(--accent);
        }

        /* Flash sale banner */
        .flash-sale {
            background: linear-gradient(120deg, #141b2b, #1a2538);
            border-radius: 32px;
            overflow: hidden;
            display: flex;
            flex-wrap: wrap;
            gap: 24px;
            margin: 48px 0;
        }
        .flash-sale-img {
            flex: 1;
            min-width: 240px;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80') center/cover;
            min-height: 280px;
        }
        .flash-content {
            flex: 1.5;
            padding: 32px;
        }
        .timer-group {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }
        .timer-block {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(8px);
            border-radius: 20px;
            padding: 12px 16px;
            text-align: center;
            min-width: 70px;
        }

        /* Testimonials */
        .testimonials-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 12px 4px;
        }
        .testimonial-card {
            min-width: 320px;
            background: var(--bg-surface);
            border-radius: 28px;
            padding: 24px;
            border: 1px solid var(--border-light);
        }

        /* Newsletter */
        .newsletter-modern {
            background: var(--accent-gradient);
            border-radius: 32px;
            padding: 52px 28px;
            text-align: center;
            color: white;
        }
        .newsletter-modern input {
            padding: 14px 22px;
            border-radius: 60px;
            border: none;
            width: 300px;
            max-width: 70%;
            margin-right: 12px;
        }

        /* Footer */
        footer {
            padding: 48px 0 32px;
            border-top: 1px solid var(--border-light);
            margin-top: 32px;
        }

        /* Responsive */
        @media (max-width: 900px) {
            .nav-links { display: none; }
            .mobile-menu-btn { display: block; }
            .hero-modern h1 { font-size: 2.3rem; }
            .products-grid { gap: 20px; }
        }
        @media (max-width: 640px) {
            .container { padding: 0 20px; }
            .timer-group { flex-wrap: wrap; justify-content: center; }
        }

        /* Toast */
        .toast-message {
            position: fixed;
            bottom: 24px;
            right: 24px;
            background: #1f2937;
            color: white;
            padding: 12px 24px;
            border-radius: 100px;
            font-weight: 500;
            z-index: 1000;
            animation: fadeUp 2.4s forwards;
            backdrop-filter: blur(12px);
        }
        @keyframes fadeUp {
            0% { opacity: 0; transform: translateY(20px);}
            15% { opacity: 1; transform: translateY(0);}
            85% { opacity: 1; transform: translateY(0);}
            100% { opacity: 0; visibility: hidden;}
        }
        .badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--accent);
            padding: 4px 12px;
            border-radius: 40px;
            font-weight: bold;
            font-size: 0.7rem;
        }
    </style>
</head>
<body>

<header class="glass-header">
    <div class="container header-inner">
        <button class="mobile-menu-btn" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
        <div class="logo">LUMINA</div>

        <ul class="nav-links" id="desktopNav">
            <li><a href="#" class="active">Home</a></li>
            <li><a href="#" id="catScrollBtn">Collections</a></li>
            <li><a href="#dealsSection">Flash Sale</a></li>
            <li><a href="#">Studio</a></li>
        </ul>

        <div style="display: flex; gap: 12px; align-items: center;">
            <div class="search-wrapper">
                <i class="fas fa-search" style="color: var(--text-secondary);"></i>
                <input type="text" id="searchInput" placeholder="Search products...">
            </div>
            <button class="theme-toggle" id="themeToggleBtn"><i class="fas fa-moon"></i><i class="fas fa-sun" style="display: none;"></i></button>
            <div class="cart-icon" id="cartIcon">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCountDisplay">0</span>
            </div>
        </div>
    </div>

    <!-- Mobile drawer menu -->
    <div id="mobileDrawer" style="display: none; flex-direction: column; background: var(--bg-surface); padding: 20px; gap: 12px; border-top: 1px solid var(--border-light);">
        <a href="#" style="padding: 10px;">🏠 Home</a>
        <a href="#" id="mobileCatLink">📁 Categories</a>
        <a href="#dealsSection">⚡ Flash Sale</a>
        <a href="#">❤️ Wishlist</a>
    </div>
</header>

<main>
    <!-- Hero -->
    <section class="hero-modern">
        <div class="container">
            <h1>Where elegance meets <br> tomorrow's energy</h1>
            <p style="color: var(--text-secondary); max-width: 600px; margin: 16px auto;">Discover curated collections, iconic design, and limited drops.</p>
            <div class="btn-group">
                <button class="btn-primary" id="shopNowBtn">Shop Now →</button>
                <button class="btn-outline" id="exploreBtn">Explore Drops</button>
            </div>
        </div>
    </section>

    <!-- Categories - completely new sleek look -->
    <div class="container" style="margin-top: 20px;">
        <div class="section-header">
            <h2>Curated by mood</h2>
            <p>Find what resonates with your style</p>
        </div>
        <div class="categories-grid" id="categoriesContainer"></div>
    </div>

    <!-- Trending Products -->
    <div class="container" style="margin: 56px 0;">
        <div class="section-header">
            <h2>Signature picks</h2>
            <p>Bestsellers you'll love</p>
        </div>
        <div class="products-grid" id="productsGrid"></div>
    </div>

    <!-- Flash sale section -->
    <div class="container" id="dealsSection">
        <div class="flash-sale">
            <div class="flash-sale-img"></div>
            <div class="flash-content">
                <h2 style="font-size: 2rem; color: white;">⚡ Quantum Drop</h2>
                <p style="color: #b9c7d9;">Limited units — MacBook Air M2 • starting at $999</p>
                <div class="timer-group">
                    <div class="timer-block"><span id="dealDays">00</span><br><span style="font-size: 12px;">Days</span></div>
                    <div class="timer-block"><span id="dealHours">00</span><br><span style="font-size: 12px;">Hours</span></div>
                    <div class="timer-block"><span id="dealMinutes">00</span><br><span style="font-size: 12px;">Mins</span></div>
                    <div class="timer-block"><span id="dealSeconds">00</span><br><span style="font-size: 12px;">Secs</span></div>
                </div>
                <div style="display: flex; align-items: baseline; gap: 16px;">
                    <span class="price" style="color: #4cc9f0; font-size: 2rem;">$999</span>
                    <span style="text-decoration: line-through;">$1,299</span>
                    <span style="background: #ff4757; padding: 4px 12px; border-radius: 40px;">-23% OFF</span>
                </div>
                <button class="btn-primary" id="flashDealBtn" style="margin-top: 24px;">Secure Deal →</button>
            </div>
        </div>
    </div>

    <!-- Testimonials redesigned -->
    <div class="container" style="margin: 56px 0;">
        <div class="section-header">
            <h2>Voices of the community</h2>
            <p>Real stories, real moments</p>
        </div>
        <div class="testimonials-scroll" id="testimonialsList">
            <!-- dynamic but also static fallback -->
        </div>
    </div>

    <!-- Newsletter with fresh style -->
    <div class="container" style="margin-bottom: 40px;">
        <div class="newsletter-modern">
            <h3 style="font-size: 1.8rem;">Join the inner circle</h3>
            <p>Get early access to drops and secret sales</p>
            <form id="newsletterForm" style="margin-top: 20px;">
                <input type="email" id="newsEmail" placeholder="Your email" required>
                <button class="btn-primary" type="submit" style="background: white; color: #0a1c2f;">Subscribe</button>
            </form>
            <div id="newsMsg" style="margin-top: 14px; font-size: 0.9rem;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 28px;">
        <div><div class="logo" style="font-size: 1.6rem;">LUMINA</div><p style="color: var(--text-secondary); max-width: 260px;">Minimalist luxury — redefine your daily essentials.</p></div>
        <div><h4>Explore</h4><p style="color: var(--text-secondary);">New Arrivals<br>Lookbook<br>Stories</p></div>
        <div><h4>Support</h4><p style="color: var(--text-secondary);">FAQ<br>Shipping<br>Returns</p></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 40px; color: var(--text-secondary);">© 2026 LUMINA — All rights reserved</div>
</footer>

<script>
    // --- DATA (modern product assortment)
    const CATEGORIES = [
        { id: 'wearables', name: 'Wearables', icon: 'fas fa-clock' },
        { id: 'audio', name: 'Audio', icon: 'fas fa-headphones' },
        { id: 'studio', name: 'Studio', icon: 'fas fa-camera' },
        { id: 'essentials', name: 'Essentials', icon: 'fas fa-mug-hot' },
        { id: 'bags', name: 'Bags', icon: 'fas fa-briefcase' },
        { id: 'edition', name: 'Limited', icon: 'fas fa-gem' }
    ];

    const PRODUCTS = [
        { id: 101, title: 'Aether Headphones', price: 349, oldPrice: 499, rating: 4.8, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio', badge: 'limited' },
        { id: 102, title: 'Horizon Watch', price: 279, oldPrice: 399, rating: 4.9, img: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80', category: 'wearables', badge: 'bestseller' },
        { id: 103, title: 'Arc Camera Kit', price: 1899, rating: 5, img: 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80', category: 'studio' },
        { id: 104, title: 'Nomad Backpack', price: 119, oldPrice: 159, rating: 4.7, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'bags' },
        { id: 105, title: 'Zen White Speaker', price: 229, rating: 4.8, img: 'https://images.unsplash.com/photo-1545454675-3531b543be5d?auto=format&fit=crop&w=600&q=80', category: 'audio' },
        { id: 106, title: 'Lumina Stone Mug', price: 39, rating: 4.6, img: 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=600&q=80', category: 'essentials' }
    ];

    let cartItems = 0;
    const cartCountSpan = document.getElementById('cartCountDisplay');

    function updateCartUI() {
        cartCountSpan.innerText = cartItems;
    }

    function showToast(msg) {
        const toast = document.createElement('div');
        toast.className = 'toast-message';
        toast.innerText = msg;
        document.body.appendChild(toast);
        setTimeout(() => toast.remove(), 2400);
    }

    function addToCart(productId) {
        const product = PRODUCTS.find(p => p.id === productId);
        if (product) {
            cartItems++;
            updateCartUI();
            showToast(`✨ ${product.title} added to bag`);
            const btn = document.querySelector(`.add-btn[data-id='${productId}']`);
            if (btn) {
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                btn.disabled = true;
                setTimeout(() => {
                    btn.innerHTML = '<i class="fas fa-bag-shopping"></i> Add';
                    btn.disabled = false;
                }, 1000);
            }
        }
    }

    // Render categories
    function renderCategories() {
        const container = document.getElementById('categoriesContainer');
        container.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'category-card';
            card.innerHTML = `<i class="${cat.icon}"></i><h4>${cat.name}</h4><small style="color: var(--text-secondary);">Explore</small>`;
            card.addEventListener('click', () => {
                document.getElementById('searchInput').value = cat.name;
                filterProducts(cat.name);
                window.scrollTo({ top: document.querySelector('.products-grid').offsetTop - 80, behavior: 'smooth' });
            });
            container.appendChild(card);
        });
    }

    function renderProducts(filterQuery = '') {
        const grid = document.getElementById('productsGrid');
        let filtered = [...PRODUCTS];
        if (filterQuery.trim()) {
            const q = filterQuery.toLowerCase();
            filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        }
        grid.innerHTML = '';
        filtered.forEach(p => {
            const card = document.createElement('div');
            card.className = 'product-card';
            card.innerHTML = `
                <div style="position: relative;">
                    ${p.badge ? `<span class="badge" style="background: #4361ee;">${p.badge}</span>` : ''}
                    <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                </div>
                <div class="product-info">
                    <h3 style="font-size: 1.2rem;">${p.title}</h3>
                    <div class="rating">${'★'.repeat(Math.floor(p.rating))} ${(p.rating % 1 ? '½' : '')} <span style="color: var(--text-secondary); font-size: 12px;">(popular)</span></div>
                    <div style="margin-top: 10px;">
                        <span class="price">$${p.price}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
                    </div>
                    <button class="add-to-cart add-btn" data-id="${p.id}"><i class="fas fa-bag-shopping"></i> Add to cart</button>
                </div>
            `;
            grid.appendChild(card);
        });
        document.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCart(id);
            });
        });
    }

    function filterProducts(query) {
        renderProducts(query);
    }

    // setup testimonials
    function loadTestimonials() {
        const testimonials = [
            { name: 'Sophia Chen', text: 'Absolutely stunning quality. The packaging felt like a gift.', rating: 5, avatar: 'https://randomuser.me/api/portraits/women/68.jpg' },
            { name: 'Marcus V.', text: 'Minimal and sleek. Delivery was faster than expected.', rating: 5 },
            { name: 'Elena R.', text: 'The best shopping experience — intuitive UI and premium items.', rating: 4.8 }
        ];
        const container = document.getElementById('testimonialsList');
        container.innerHTML = testimonials.map(t => `
            <div class="testimonial-card">
                <div class="rating">${'★'.repeat(Math.floor(t.rating))}</div>
                <p style="margin: 12px 0;">“${t.text}”</p>
                <div style="font-weight: 700;">— ${t.name}</div>
            </div>
        `).join('');
    }

    // Countdown timer
    function initDealTimer() {
        const targetTime = new Date().getTime() + (23 * 3600 + 59 * 60) * 1000;
        function updateTimer() {
            const now = new Date().getTime();
            const diff = targetTime - now;
            if (diff <= 0) {
                document.getElementById('dealDays').innerText = '00';
                document.getElementById('dealHours').innerText = '00';
                document.getElementById('dealMinutes').innerText = '00';
                document.getElementById('dealSeconds').innerText = '00';
                return;
            }
            const days = Math.floor(diff / (86400000));
            const hours = Math.floor((diff % 86400000) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }
        updateTimer();
        setInterval(updateTimer, 1000);
    }

    // Theme toggling
    const themeToggle = document.getElementById('themeToggleBtn');
    const currentTheme = localStorage.getItem('theme') || 'light';
    if (currentTheme === 'dark') document.documentElement.setAttribute('data-theme', 'dark');
    themeToggle.addEventListener('click', () => {
        const isDark = document.documentElement.getAttribute('data-theme') === 'dark';
        if (isDark) {
            document.documentElement.removeAttribute('data-theme');
            localStorage.setItem('theme', 'light');
        } else {
            document.documentElement.setAttribute('data-theme', 'dark');
            localStorage.setItem('theme', 'dark');
        }
    });

    // Newsletter
    const newsletterForm = document.getElementById('newsletterForm');
    newsletterForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if (!email || !email.includes('@')) {
            msgDiv.innerText = 'Valid email required';
            msgDiv.style.color = '#ffb3b3';
        } else {
            msgDiv.innerText = '🎉 You’re in! Exclusive drops incoming.';
            msgDiv.style.color = '#c7f9cc';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => msgDiv.innerText = '', 3000);
        }
    });

    // UI events & mobile
    document.getElementById('mobileMenuBtn').addEventListener('click', () => {
        const drawer = document.getElementById('mobileDrawer');
        drawer.style.display = drawer.style.display === 'none' ? 'flex' : 'none';
    });
    document.getElementById('shopNowBtn').addEventListener('click', () => window.scrollTo({ top: document.querySelector('.products-grid').offsetTop - 50, behavior: 'smooth' }));
    document.getElementById('exploreBtn').addEventListener('click', () => window.location.hash = '#dealsSection');
    document.getElementById('flashDealBtn').addEventListener('click', () => {
        cartItems += 1;
        updateCartUI();
        showToast('🔥 MacBook Air added from flash sale!');
    });
    document.getElementById('searchInput').addEventListener('input', (e) => filterProducts(e.target.value));
    document.getElementById('catScrollBtn').addEventListener('click', (e) => {
        e.preventDefault();
        document.querySelector('.categories-grid').scrollIntoView({ behavior: 'smooth' });
    });

    // Init all
    function init() {
        renderCategories();
        renderProducts('');
        loadTestimonials();
        initDealTimer();
        updateCartUI();
    }
    init();
</script>
</body>
</html>
