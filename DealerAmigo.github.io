<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DealerAmigo - Automatiza. Atrae. Vende.</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            color: #333;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        header {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            padding: 20px 0;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 2.5rem;
            font-weight: bold;
            background: linear-gradient(45deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .tagline {
            font-size: 1.2rem;
            color: #666;
            margin-left: 20px;
        }

        .cta-button {
            background: linear-gradient(45deg, #ff6b6b, #ee5a24);
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 50px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }

        .cta-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 30px rgba(255, 107, 107, 0.4);
        }

        .hero {
            padding: 80px 0;
            text-align: center;
            color: white;
        }

        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .hero-subtitle {
            font-size: 1.5rem;
            margin-bottom: 40px;
            opacity: 0.9;
        }

        .value-props {
            background: white;
            padding: 80px 0;
            margin: 0;
        }

        .value-prop {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
            padding: 20px;
            background: linear-gradient(135deg, #f8f9fa, #e9ecef);
            border-radius: 15px;
            transition: transform 0.3s ease;
        }

        .value-prop:hover {
            transform: translateX(10px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .value-prop .icon {
            font-size: 2rem;
            margin-right: 20px;
            background: linear-gradient(45deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .value-prop h3 {
            font-size: 1.3rem;
            color: #333;
            margin-bottom: 5px;
        }

        .value-prop p {
            color: #666;
        }

        .packages {
            background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
            padding: 80px 0;
            color: white;
        }

        .packages h2 {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 60px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .packages-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 30px;
        }

        .package-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 40px;
            color: #333;
            text-align: center;
            transition: transform 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .package-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: linear-gradient(45deg, #667eea, #764ba2);
        }

        .package-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
        }

        .package-title {
            font-size: 1.5rem;
            margin-bottom: 10px;
            color: #333;
        }

        .package-subtitle {
            color: #666;
            margin-bottom: 20px;
        }

        .package-price {
            font-size: 2.5rem;
            font-weight: bold;
            color: #667eea;
            margin-bottom: 30px;
        }

        .package-features {
            text-align: left;
            margin-bottom: 30px;
        }

        .package-features li {
            margin-bottom: 10px;
            padding-left: 20px;
            position: relative;
        }

        .package-features li::before {
            content: "✓";
            position: absolute;
            left: 0;
            color: #28a745;
            font-weight: bold;
        }

        .addons {
            background: white;
            padding: 80px 0;
        }

        .addons h2 {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 40px;
            color: #333;
        }

        .addon-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            margin-bottom: 15px;
            background: linear-gradient(135deg, #f8f9fa, #e9ecef);
            border-radius: 10px;
            transition: transform 0.3s ease;
        }

        .addon-item:hover {
            transform: scale(1.02);
        }

        .addon-price {
            font-weight: bold;
            color: #667eea;
            font-size: 1.2rem;
        }

        .notes {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            padding: 60px 0;
            color: white;
            text-align: center;
        }

        .notes h3 {
            font-size: 1.8rem;
            margin-bottom: 30px;
        }

        .notes ul {
            text-align: left;
            max-width: 800px;
            margin: 0 auto;
        }

        .notes li {
            margin-bottom: 15px;
            padding-left: 20px;
            position: relative;
        }

        .notes li::before {
            content: "•";
            position: absolute;
            left: 0;
            color: #ffd700;
        }

        footer {
            background: #333;
            color: white;
            padding: 40px 0;
            text-align: center;
        }

        .footer-cta {
            font-size: 1.5rem;
            margin-bottom: 30px;
        }

        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .packages-grid {
                grid-template-columns: 1fr;
            }
            
            .header-content {
                flex-direction: column;
                gap: 20px;
            }
            
            .logo {
                font-size: 2rem;
            }
        }

        .floating-whatsapp {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: #25D366;
            color: white;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            text-decoration: none;
            box-shadow: 0 5px 20px rgba(37, 211, 102, 0.4);
            animation: pulse 2s infinite;
            z-index: 1000;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.1); }
            100% { transform: scale(1); }
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="header-content">
                <div style="display: flex; align-items: center;">
                    <div class="logo">DealerAmigo</div>
                    <div class="tagline">Automatiza. Atrae. Vende.</div>
                </div>
                <a href="#contacto" class="cta-button">Comenzar Ahora</a>
            </div>
        </div>
    </header>

    <section class="hero">
        <div class="container">
            <h1>🚀 OFERTAS DE SERVICIO 2025</h1>
            <p class="hero-subtitle">Publicidad + Producción + Asistente Virtual para Dealers y Negocios Locales</p>
            <a href="#paquetes" class="cta-button">Ver Paquetes</a>
        </div>
    </section>

    <section class="value-props">
        <div class="container">
            <div class="value-prop">
                <div class="icon">✨</div>
                <div>
                    <h3>"Haz más con menos"</h3>
                    <p>Automatiza tu atención, vende más sin contratar más personal.</p>
                </div>
            </div>

            <div class="value-prop">
                <div class="icon">👉</div>
                <div>
                    <h3>"No vendas más, cierra mejor"</h3>
                    <p>Nuestro bot califica, agenda y da seguimiento para que tú solo te concentres en cerrar.</p>
                </div>
            </div>

            <div class="value-prop">
                <div class="icon">💰</div>
                <div>
                    <h3>"Estás perdiendo dinero y ni lo sabes"</h3>
                    <p>Cada cliente que no contestas es una venta que se fue... ¿cuántos te han escrito hoy sin respuesta?</p>
                </div>
            </div>

            <div class="value-prop">
                <div class="icon">📊</div>
                <div>
                    <h3>"Lo que no se mide, no crece"</h3>
                    <p>Cada lead que entra queda registrado. Cada acción tiene seguimiento. Todo está medido.</p>
                </div>
            </div>

            <div class="value-prop">
                <div class="icon">⚡</div>
                <div>
                    <h3>"Transforma tu negocio en 30 días"</h3>
                    <p>En solo un mes tendrás presencia digital, un bot atendiendo 24/7 y una campaña corriendo.</p>
                </div>
            </div>

            <div class="value-prop">
                <div class="icon">🎯</div>
                <div>
                    <h3>"No es magia. Es estrategia."</h3>
                    <p>Cada campaña está pensada para atraer a tu cliente ideal. Esto no es suerte, es ejecución.</p>
                </div>
            </div>

            <div class="value-prop">
                <div class="icon">🤝</div>
                <div>
                    <h3>"Tú vendes. Yo te consigo el cliente."</h3>
                    <p>Tú eres el experto en cerrar. Yo me encargo de que lleguen leads calificados a tu WhatsApp.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="packages" id="paquetes">
        <div class="container">
            <h2>Nuestros Paquetes</h2>
            <div class="packages-grid">
                <div class="package-card">
                    <h3 class="package-title">🌟 PAQUETE INICIAL</h3>
                    <p class="package-subtitle">"Presencia Inteligente"<br>Ideal para comenzar a captar clientes sin complicarte</p>
                    <div class="package-price">Desde $450<span style="font-size: 1rem;">/mes</span></div>
                    <ul class="package-features">
                        <li>Publicaciones semanales en redes sociales</li>
                        <li>1 a 2 reels mensuales</li>
                        <li>Copywriting y diseño gráfico profesional</li>
                        <li>Asistente virtual DealerAmigo para atender mensajes y agendar citas</li>
                        <li>Reporte mensual de resultados</li>
                    </ul>
                    <a href="#contacto" class="cta-button">Elegir Plan</a>
                </div>

                <div class="package-card">
                    <h3 class="package-title">⚡ PAQUETE AVANZADO</h3>
                    <p class="package-subtitle">"Impulso Comercial"<br>Para negocios que ya venden y quieren escalar</p>
                    <div class="package-price">Desde $1,000<span style="font-size: 1rem;">/mes</span></div>
                    <ul class="package-features">
                        <li>2 Campañas activas (Redes Sociales o Google Ads)</li>
                        <li>Remarketing inteligente</li>
                        <li>Diseño gráfico y copys de alto impacto</li>
                        <li>Landing page con inventario + chatbot integrado</li>
                        <li>Producción mensual de contenido visual (video, reels, fotos)</li>
                        <li>Asistente Virtual 24/7 + hoja de seguimiento automatizada</li>
                    </ul>
                    <a href="#contacto" class="cta-button">Elegir Plan</a>
                </div>

                <div class="package-card">
                    <h3 class="package-title">🚀 PAQUETE PREMIUM</h3>
                    <p class="package-subtitle">"Dominio Total"<br>Para negocios listos para liderar su mercado local y digital</p>
                    <div class="package-price">$2,000-$2,500<span style="font-size: 1rem;">/mes</span></div>
                    <ul class="package-features">
                        <li>Publicidad omnicanal (Redes + Google + Email/SMS)</li>
                        <li>Producción de contenido para TV, radio o prensa</li>
                        <li>Landing page avanzada + dashboard en tiempo real</li>
                        <li>Múltiples campañas simultáneas con optimización continua</li>
                        <li>Integración con CRM y analíticas completas</li>
                        <li>Asistente Virtual entrenado con respuestas por intención y ubicación</li>
                    </ul>
                    <a href="#contacto" class="cta-button">Elegir Plan</a>
                </div>
            </div>
        </div>
    </section>

    <section class="addons">
        <div class="container">
            <h2>📌 SERVICIOS A LA CARTA</h2>
            <div class="addon-item">
                <span>Diseño de landing adicional</span>
                <span class="addon-price">$350</span>
            </div>
            <div class="addon-item">
                <span>Producción de video estilo TV/web</span>
                <span class="addon-price">desde $450</span>
            </div>
            <div class="addon-item">
                <span>Publicidad en TV (WAPA) - 11 anuncios de 30s</span>
                <span class="addon-price">$3,250/semana</span>
            </div>
            <div class="addon-item">
                <span>Página completa en prensa (Metro / El Nuevo Día)</span>
                <span class="addon-price">desde $6,984</span>
            </div>
        </div>
    </section>

    <section class="notes">
        <div class="container">
            <h3>🔹 NOTAS IMPORTANTES</h3>
            <ul>
                <li>Los precios no incluyen presupuesto de pauta publicitaria (se recomienda invertir desde $350 mensuales en Meta o Google).</li>
                <li>Todos los paquetes incluyen seguimiento de leads en tiempo real mediante hoja de Google.</li>
                <li>Se pueden ajustar los paquetes mes a mes según necesidades.</li>
            </ul>
        </div>
    </section>

    <footer id="contacto">
        <div class="container">
            <div class="footer-cta">
                DealerAmigo está diseñado para ayudarte a automatizar tu proceso de captación y concentrarte en cerrar ventas.
            </div>
            <div style="font-size: 1.2rem; margin-bottom: 20px;">
                <strong>¿Listo para comenzar?</strong>
            </div>
            <a href="https://wa.me/17871234567" class="cta-button" style="margin-right: 20px;">📞 Agenda una Llamada</a>
            <a href="mailto:info@dealeramigo.com" class="cta-button">📧 Solicita Propuesta</a>
        </div>
    </footer>

    <a href="https://wa.me/17871234567" class="floating-whatsapp" title="Contactar por WhatsApp">
        📱
    </a>

    <script>
        // Smooth scrolling para los enlaces internos
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });

        // Animación de entrada para las value props
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        });

        document.querySelectorAll('.value-prop, .package-card').forEach(el => {
            el.style.opacity = '0';
            el.style.transform = 'translateY(30px)';
            el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
            observer.observe(el);
        });
    </script>
</body>
</html>
