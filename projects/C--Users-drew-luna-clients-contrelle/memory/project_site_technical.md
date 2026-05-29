---
name: Contrelle website technical details - platforms and URLs
description: Platform, confirmation page URL, and technical details for old and new Contrelle websites
type: project
originSessionId: 80a8a6b1-9c23-4b5c-aa6e-1af1cf4f3fe4
---
## New Website (staging / going live as contrelle.com)

Platform: WooCommerce

Order confirmation page URL pattern:
https://contrelle.com/checkout/order-received/{order_id}/?key=wc_order_{key}

Staging example: https://contrelle.appetite.dev/checkout/order-received/1671/?key=wc_order_qFeeiesyFuAa4

GTM purchase dataLayer event should fire on this page using the WooCommerce woocommerce_thankyou hook.

Product page URL structure: /product/contrelle-activgard-[product-name]/
- Sizing Kit: /product/contrelle-activgard-sizing-kit/
- 5 Pack: /product/contrelle-activgard-5-pack/
- 30 Pack: /product/contrelle-activgard-30-pack/

## Old Website (contrelle.com - Magento)

Platform: Magento

Has Magento_GoogleAnalytics module installed - loading GA4 as a separate instance outside GTM. Must be disabled when removing hardcoded tags.

Existing GMC product feed URL (old site):
https://contrelle.com/amfeed/feed/download?id=13&file=google_xml_feed.xml

New site XML feed should carry over all fields/values from this feed. Only changes: product page URLs, image URLs, and two additional fields (multipack, subscription_cost).
