<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrackOrder.aspx.cs" Inherits="Pantora.TrackOrder" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Track Your Order &bull; Pantora Atelier</title>

    <!-- Luxury Typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Stylesheets -->
    <link href="Content/Home.css" rel="stylesheet" type="text/css" />
    <link href="Content/TrackOrder.css" rel="stylesheet" type="text/css" />
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">

        <!-- ------------------------------------------------------------------
             Site Header
             ------------------------------------------------------------------ -->
        <header class="pantora-header">
            <div class="header-inner">
                <!-- Brand Wordmark -->
                <a href="Default.aspx" class="pantora-brand">
                    PANTORA<span class="brand-dot"></span>
                </a>

                <!-- Navigation Links -->
                <nav class="main-nav">
                    <a href="Default.aspx" class="nav-link">Home</a>
                    <a href="Default.aspx#shop-by-fit" class="nav-link">Shop</a>
                    <a href="SizeGuide.aspx" class="nav-link">Size Guide</a>
                    <a href="Default.aspx#fit-intelligence" class="nav-link">About</a>
                    <a href="Default.aspx#private-dispatch" class="nav-link">Contact</a>
                </nav>

                <!-- Header Utility Icons -->
                <div class="header-utilities">
                    <!-- Wishlist Icon with Badge -->
                    <a href="Wishlist.aspx" class="icon-btn wishlist-icon-wrap" title="My Wishlist">
                        <svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                        </svg>
                        <span class="wishlist-badge" id="headerWishlistBadge">4</span>
                    </a>

                    <!-- Cart Bag with Badge -->
                    <a href="Cart.aspx" class="icon-btn cart-icon-wrap" title="Shopping Bag">
                        <svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                            <line x1="3" y1="6" x2="21" y2="6"></line>
                            <path d="M16 10a4 4 0 0 1-8 0"></path>
                        </svg>
                        <span class="cart-count-badge" id="headerCartCount" style="display:none;">0</span>
                    </a>

                    <!-- Patron Account Icon -->
                    <a href="Account.aspx" onclick="if(localStorage.getItem('pantora_logged_out')==='true'){window.location.href='Login.aspx';return false;}" class="icon-btn" title="My Account">
                        <svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                    </a>
                </div>
            </div>
        </header>

        <!-- ------------------------------------------------------------------
             Track Order Page Body
             ------------------------------------------------------------------ -->
        <main class="track-page-wrapper">

            <!-- Breadcrumb Navigation -->
            <div class="track-breadcrumb">
                <a href="Default.aspx">Home</a>
                <span class="sep">&rsaquo;</span>
                <a href="Checkout.aspx">Checkout</a>
                <span class="sep">&rsaquo;</span>
                <span class="current">Track Order</span>
            </div>

            <!-- Header Bar -->
            <div class="track-header-bar">
                <div class="track-header-left">
                    <span class="track-super-tag">ORDER DISPATCH LEDGER &bull; VERIFIED SARTORIAL CUT</span>
                    <h1 class="track-main-title">
                        <span>Track Your Order</span>
                        <span class="order-ref-pill" id="lblOrderRef">#PN-9241-ATELIER</span>
                    </h1>
                </div>

                <div class="track-header-right">
                    <div class="track-status-badge">
                        <span class="track-status-dot"></span>
                        <span id="lblShipmentStatus">IN TRANSIT &bull; ON SCHEDULE</span>
                    </div>
                </div>
            </div>

            <!-- Stepper Progress Tracker -->
            <div class="track-stepper-card">
                <div class="stepper-steps-container">
                    <div class="stepper-progress-line">
                        <div class="stepper-progress-fill" id="stepperProgressFill"></div>
                    </div>

                    <!-- Step 1: Order Placed -->
                    <div class="stepper-step completed">
                        <div class="step-indicator">
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round">
                                <polyline points="20 6 9 17 4 12"></polyline>
                            </svg>
                        </div>
                        <div class="step-label-row">
                            <span class="step-title">01. ORDER PLACED</span>
                        </div>
                        <div class="step-time" id="step1Time">Oct 26 &bull; 10:14 AM</div>
                        <div class="step-desc">Payment verified via Atelier Gateway. Batch queued for tailoring.</div>
                    </div>

                    <!-- Step 2: Tailoring & Hem Pinning -->
                    <div class="stepper-step completed">
                        <div class="step-indicator">
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round">
                                <polyline points="20 6 9 17 4 12"></polyline>
                            </svg>
                        </div>
                        <div class="step-label-row">
                            <span class="step-title">02. HEM PINNING &amp; CUT</span>
                        </div>
                        <div class="step-time" id="step2Time">Oct 26 &bull; 04:30 PM</div>
                        <div class="step-desc">Inseams inspected, custom pre-creased &amp; hand-pressed.</div>
                    </div>

                    <!-- Step 3: Shipped / In Transit -->
                    <div class="stepper-step active">
                        <div class="step-indicator">03</div>
                        <div class="step-label-row">
                            <span class="step-title">03. SHIPPED</span>
                            <span class="step-live-pill">LIVE</span>
                        </div>
                        <div class="step-time" id="step3Time">Oct 27 &bull; 08:45 AM</div>
                        <div class="step-desc">Handed to BlueDart Express Waybill <strong id="step3Waybill">#BLD-8892014</strong>.</div>
                    </div>

                    <!-- Step 4: Delivered -->
                    <div class="stepper-step muted">
                        <div class="step-indicator">04</div>
                        <div class="step-label-row">
                            <span class="step-title">04. DELIVERED</span>
                        </div>
                        <div class="step-time" id="step4EstTime">Estimated: Oct 30, by 7:00 PM</div>
                        <div class="step-desc">Signature upon white-glove packaging handover.</div>
                    </div>
                </div>
            </div>

            <!-- Main 2-Column Grid -->
            <div class="track-main-grid">

                <!-- Left Column: Garments in Consignment -->
                <div class="track-col-left">
                    <div class="consignment-header-row">
                        <h2 class="consignment-heading">GARMENTS IN CONSIGNMENT (<span id="trackItemsCount">3</span> items)</h2>
                        <span class="consignment-origin-tag">Crafted &amp; Pressed in Mumbai</span>
                    </div>

                    <!-- Dynamic Garment Cards List -->
                    <div class="consignment-items-list" id="trackGarmentsList">
                        <!-- Injected via JavaScript from active order data -->
                    </div>

                    <!-- Settlement Summary Bar -->
                    <div class="track-settlement-bar">
                        <div class="settlement-bar-left">
                            <div class="settlement-bar-label" id="trackPayModeLabel">PAID WITH INSTANT UPI</div>
                            <div class="settlement-bar-sub">Includes all GST, Tailoring Hem Pinning, and Insured Express Transit</div>
                        </div>
                        <div class="settlement-bar-right">
                            <div class="settlement-bar-total-label">TOTAL VALUED</div>
                            <div class="settlement-bar-total-val" id="trackTotalVal">&#8377;6,997</div>
                        </div>
                    </div>
                </div>

                <!-- Right Column: Courier & Delivery Details -->
                <div class="track-col-right">

                    <!-- 1. Courier Telemetry Card -->
                    <div class="track-info-card">
                        <div class="track-card-header">
                            <h3 class="track-card-title">CARRIER TELEMETRY</h3>
                            <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="#666666" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="1" y="3" width="15" height="13"></rect>
                                <polygon points="16 8 20 8 23 11 23 16 16 16 8"></polygon>
                                <circle cx="5.5" cy="18.5" r="2.5"></circle>
                                <circle cx="18.5" cy="18.5" r="2.5"></circle>
                            </svg>
                        </div>

                        <div class="track-card-body">
                            <div class="courier-name">BlueDart Air Priority Express</div>
                            
                            <div class="courier-detail-table">
                                <div class="courier-detail-row">
                                    <span class="courier-label">Tracking Airbill</span>
                                    <span class="courier-val" id="telemetryAirbill">BLD-8892014</span>
                                </div>
                                <div class="courier-detail-row">
                                    <span class="courier-label">Dispatched Origin</span>
                                    <span class="courier-val">Pantora Atelier Hub &bull; Sewri, MH</span>
                                </div>
                                <div class="courier-detail-row">
                                    <span class="courier-label">Last Ping</span>
                                    <span class="courier-val">Mumbai Central Sort Facility (08:45 AM)</span>
                                </div>
                            </div>

                            <div class="courier-progress-bar-wrap">
                                <div class="courier-progress-label-row">
                                    <span>TRANSIT PATHWAY: 68% COMPLETED</span>
                                    <span style="color:#C08054;">On Route</span>
                                </div>
                                <div class="courier-progress-track">
                                    <div class="courier-progress-bar"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 2. Delivery Destination Card -->
                    <div class="track-info-card">
                        <div class="track-card-header">
                            <h3 class="track-card-title">DELIVERY DESTINATION</h3>
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="#666666" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path>
                                <circle cx="12" cy="10" r="3"></circle>
                            </svg>
                        </div>

                        <div class="track-card-body">
                            <div class="dest-name-bold" id="trackDestName">Aditya Sharma</div>
                            <div class="dest-text-line" id="trackDestAddr1">Flat 402, Lodha Bellissimo, NM Joshi Marg</div>
                            <div class="dest-text-line" id="trackDestAddr2">Lower Parel, Mumbai, Maharashtra 400013</div>
                            <div class="dest-phone-text" id="trackDestPhone">Phone: +91 98765 43210</div>
                        </div>
                    </div>

                    <!-- 3. Alteration Guarantee Card -->
                    <div class="track-alteration-card">
                        <div class="alteration-icon">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="2" y="7" width="20" height="14" rx="2" ry="2"></rect>
                                <path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16"></path>
                            </svg>
                        </div>
                        <div>
                            <div class="alteration-title">COMPLIMENTARY 7-DAY DOORSTEP FIT ALTERATION</div>
                            <div class="alteration-desc">
                                Should the hem, waist drape, or rise require minor adjustment, your order automatically unlocks free roundtrip re-tailoring within 7 days of package delivery.
                            </div>
                        </div>
                    </div>

                    <!-- 4. Action Buttons -->
                    <div class="track-actions-row">
                        <button type="button" class="btn-tax-invoice" onclick="window.print()">
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path>
                                <polyline points="7 10 12 15 17 10"></polyline>
                                <line x1="12" y1="15" x2="12" y2="3"></line>
                            </svg>
                            <span>TAX INVOICE (GST)</span>
                        </button>
                        <button type="button" class="btn-contact-concierge" onclick="openConciergeModal()">
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
                            </svg>
                            <span>CONTACT CONCIERGE</span>
                        </button>
                    </div>

                </div>

            </div>

        </main>

        <!-- ------------------------------------------------------------------
             Site Footer
             ------------------------------------------------------------------ -->
        <footer class="pantora-footer">
            <div class="footer-inner">
                <div class="footer-links">
                    <a href="javascript:void(0)" onclick="openPrivacyModal()">Privacy Policy</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="javascript:void(0)" onclick="openTermsModal()">Terms of Service</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="Returns.aspx">Returns &amp; Exchanges</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="SizeGuide.aspx">Size &amp; Fit Guide</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="javascript:void(0)" onclick="openConciergeModal()">Support</a>
                </div>

                <div class="footer-copy">
                    &copy; 2025 Pantora Apparel Pvt. Ltd. All rights reserved.
                </div>
            </div>
        </footer>

        <!-- Modal Concierge Overlay -->
        <div id="conciergeModalOverlay" class="cart-drawer-overlay" style="justify-content: center; align-items: center;" onclick="closeConciergeModalOnOverlay(event)">
            <div class="home-modal-box" onclick="event.stopPropagation();">
                <div class="home-modal-header">
                    <h3 id="conciergeModalTitle" class="home-modal-title">Atelier Concierge</h3>
                    <button type="button" class="home-modal-close" onclick="closeConciergeModal()">&times;</button>
                </div>
                <div id="conciergeModalBody" class="home-modal-body">
                    <p>For live assistance regarding shipment dispatch, route changes, or tailoring alterations:</p>
                    <div style="margin-top:12px; font-size:13px; line-height:1.7;">
                        <strong>Email:</strong> concierge@pantora.in<br />
                        <strong>Phone:</strong> +91 (0) 22 4589 1200<br />
                        <strong>Hours:</strong> Mon&ndash;Sat, 10:00 AM &ndash; 7:00 PM IST
                    </div>
                </div>
            </div>
        </div>

    </form>

    <!-- Global Cart Engine -->
    <script src="Scripts/pantora-cart.js"></script>

    <!-- Track Order Logic Script -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            initTrackOrderPage();
        });

        function getQueryParam(param) {
            var urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(param);
        }

        function initTrackOrderPage() {
            var orderIdParam = getQueryParam('order');
            var savedOrderJson = localStorage.getItem('pantora_last_order');
            var savedOrder = null;
            if (savedOrderJson) {
                try {
                    savedOrder = JSON.parse(savedOrderJson);
                } catch (e) { }
            }

            // Decide active order data
            var orderId = orderIdParam || (savedOrder ? savedOrder.orderId : '#PN-9241-ATELIER');
            document.getElementById('lblOrderRef').innerText = orderId;

            // Generate Airbill
            var airbillNum = 'BLD-' + Math.floor(1000000 + Math.random() * 9000000);
            if (savedOrder && savedOrder.airbill) airbillNum = savedOrder.airbill;
            document.getElementById('telemetryAirbill').innerText = airbillNum;
            document.getElementById('step3Waybill').innerText = '#' + airbillNum;

            // Dates Calculation
            var today = new Date();
            var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
            var step1Str = months[today.getMonth()] + ' ' + today.getDate() + ' \u2022 10:14 AM';
            var step2Str = months[today.getMonth()] + ' ' + today.getDate() + ' \u2022 04:30 PM';
            var step3Str = months[today.getMonth()] + ' ' + (today.getDate() + 1) + ' \u2022 08:45 AM';

            var delivDate = new Date();
            delivDate.setDate(delivDate.getDate() + 4);
            var delivStr = months[delivDate.getMonth()] + ' ' + delivDate.getDate() + ', by 7:00 PM';

            document.getElementById('step1Time').innerHTML = step1Str;
            document.getElementById('step2Time').innerHTML = step2Str;
            document.getElementById('step3Time').innerHTML = step3Str;
            document.getElementById('step4EstTime').innerHTML = 'Estimated: ' + delivStr;

            // Items List
            var items = (savedOrder && savedOrder.items && savedOrder.items.length > 0) ? savedOrder.items : getDemoItems();
            renderGarmentsList(items);

            // Settlement & Destination
            if (savedOrder) {
                if (savedOrder.recipientName) document.getElementById('trackDestName').innerText = savedOrder.recipientName;
                if (savedOrder.address) document.getElementById('trackDestAddr1').innerText = savedOrder.address;
                if (savedOrder.cityStatePin) document.getElementById('trackDestAddr2').innerHTML = savedOrder.cityStatePin;
                if (savedOrder.phone) document.getElementById('trackDestPhone').innerText = 'Phone: ' + savedOrder.phone;
                if (savedOrder.payModeLabel) document.getElementById('trackPayModeLabel').innerText = savedOrder.payModeLabel;
                if (savedOrder.totalFormatted) document.getElementById('trackTotalVal').innerHTML = savedOrder.totalFormatted;
            } else {
                document.getElementById('trackDestName').innerText = 'Aditya Sharma';
                document.getElementById('trackDestAddr1').innerText = 'Flat 402, Lodha Bellissimo, NM Joshi Marg';
                document.getElementById('trackDestAddr2').innerHTML = 'Lower Parel, Mumbai, Maharashtra 400013';
                document.getElementById('trackDestPhone').innerText = 'Phone: +91 98765 43210';
                document.getElementById('trackPayModeLabel').innerText = 'PAID WITH INSTANT UPI (VERIFIED)';
                document.getElementById('trackTotalVal').innerHTML = '&#8377;6,997';
            }
        }

        function getDemoItems() {
            return [
                {
                    name: 'Seoul Pleated Straight Pants',
                    price: 2299,
                    qty: 1,
                    size: '32',
                    color: 'Melange Ash Grey',
                    fabric: '280 GSM Wool Blend',
                    sku: 'PT-KOR-0882-GRY',
                    image: 'Images/korean-seoul-pleat.png',
                    pills: ['Waist: 32', 'Inseam: 31.5"', 'Bespoke Cuff']
                },
                {
                    name: 'Osaka Wide-Leg Twill Trouser',
                    price: 2699,
                    qty: 1,
                    size: '34',
                    color: 'Natural Ecru',
                    fabric: '340 GSM Slub Twill Cotton',
                    sku: 'PT-JPN-9912-ECR',
                    image: 'Images/baggy-osaka-twill.png',
                    pills: ['Waist: 34', 'Leg Opening: 10.5"', 'Deep Double Pleats']
                },
                {
                    name: 'Atelier Slim Stretch Chino',
                    price: 1999,
                    qty: 1,
                    size: '32',
                    color: 'Deep Obsidian',
                    fabric: 'Organic Pima with 2% Elastane',
                    sku: 'PT-ATL-4411-BLK',
                    image: 'Images/slim-belgravia-chino.png',
                    pills: ['Waist: 32', 'Flat Front', 'Standard Hem']
                }
            ];
        }

        function renderGarmentsList(items) {
            var container = document.getElementById('trackGarmentsList');
            var totalCount = 0;
            var html = '';

            for (var i = 0; i < items.length; i++) {
                var it = items[i];
                totalCount += (it.qty || 1);
                var itemTotal = (it.price * (it.qty || 1));
                var skuText = it.sku || ('SKU: PT-' + (it.size || '32') + '-' + Math.floor(1000 + Math.random() * 9000));
                var fabricText = it.fabric || (it.color + ' \u2022 Long-Staple Atelier Gabardine');

                var pillsHtml = '';
                if (it.pills && it.pills.length > 0) {
                    for (var p = 0; p < it.pills.length; p++) {
                        pillsHtml += '<span class="track-pill-spec">' + it.pills[p] + '</span> ';
                    }
                } else {
                    pillsHtml = `
                        <span class="track-pill-spec">Waist: ${it.size || '32'}</span>
                        <span class="track-pill-spec">Inseam: ${it.inseam || '31"'}</span>
                        <span class="track-pill-accent">&#9679; Alteration Ready</span>
                    `;
                }

                html += `
                    <div class="track-garment-card">
                        <img src="${it.image}" alt="${it.name}" class="track-garment-thumb" />
                        <div class="track-garment-body">
                            <div class="track-garment-title-row">
                                <div class="track-garment-name">${it.name}</div>
                                <div class="track-garment-price">&#8377;${itemTotal.toLocaleString('en-IN')}</div>
                            </div>
                            <div class="track-garment-meta">${fabricText}</div>
                            <div class="track-garment-pills">
                                ${pillsHtml}
                            </div>
                            <div style="font-size:11px; color:#999; margin-top:8px; display:flex; justify-content:space-between;">
                                <span>${skuText}</span>
                                <strong>QTY: ${it.qty || 1}</strong>
                            </div>
                        </div>
                    </div>
                `;
            }

            container.innerHTML = html;
            document.getElementById('trackItemsCount').innerText = totalCount;
        }

        function openConciergeModal() {
            document.getElementById('conciergeModalOverlay').classList.add('active');
        }

        function closeConciergeModal() {
            document.getElementById('conciergeModalOverlay').classList.remove('active');
        }

        function closeConciergeModalOnOverlay(e) {
            if (e.target.id === 'conciergeModalOverlay') {
                closeConciergeModal();
            }
        }

        function openPrivacyModal() {
            document.getElementById('conciergeModalTitle').innerText = 'Pantora Privacy Policy';
            document.getElementById('conciergeModalBody').innerHTML = '<p>Your patron data and measurements are securely stored and never shared with third parties.</p>';
            openConciergeModal();
        }

        function openTermsModal() {
            document.getElementById('conciergeModalTitle').innerText = 'Terms of Atelier Service';
            document.getElementById('conciergeModalBody').innerHTML = '<p>All Pantora garments include 7-day complimentary alteration guarantees across all metro areas.</p>';
            openConciergeModal();
        }
    </script>
    <script src="Scripts/pantora-wishlist.js"></script>
</body>
</html>
