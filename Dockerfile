FROM chatwoot/chatwoot:v4.12.0-ce
WORKDIR /app

COPY branding/logo.svg /app/public/brand-assets/logo.svg
COPY branding/logo_dark.svg /app/public/brand-assets/logo_dark.svg
COPY branding/logo_thumbnail.svg /app/public/brand-assets/logo_thumbnail.svg

COPY branding/custom.css /app/public/brand-assets/custom.css

COPY public/favicon-16x16.png /app/public/favicon-16x16.png
COPY public/favicon-32x32.png /app/public/favicon-32x32.png


COPY installation/index.html.erb /app/app/views/installation/onboarding/index.html.erb

COPY views/vueapp.html.erb    /app/app/views/layouts/vueapp.html.erb
COPY views/_stylesheet.html.erb /app/app/views/super_admin/application/_stylesheet.html.erbs