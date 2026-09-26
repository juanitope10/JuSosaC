[25/7, 2:23 p. m.] Juan Sosa: Series con tendencia 
Tendencia deterministica, sube constante, TS 
Tendencia estocastica, subidas y bajadas, DS
Diferencia entre TS y DS 
Modelos ARIMA 

Series heterocedasticas
Transformaciones estabilizadoras de varianza 
Modelos GARCH 

Series estacionales
Estacionalidad deterministica
Modelos SARMA y SARIMA
[25/7, 2:39 p. m.] Juan Sosa: Tendencia estocastica caminata aleatoria
Tendencia estocastica con o sin deriva
[25/7, 7:04 p. m.] Juan Sosa: Diferencia ar y ma, fac y facv, construcciones
[25/7, 9:24 p. m.] Juan Sosa: En modelos AR la dependencia se propaga a través de los valores pasados generando una FAC que decae y una FACP que se trunca, mientras que en modelos MA la dependencia está en errores independientes, lo que produce una FAC truncada y una FACP que decae.
[27/7, 12:02 a. m.] Juan Sosa: Periodograma

SARMA periodo estacional es la s, ejemplo el 12
[27/7, 12:03 a. m.] Juan Sosa: Yt depende de yt-12
[27/7, 12:35 a. m.] Juan Sosa: El error tipo II es cuando no rechazas la hipótesis nula siendo falsa.
Dicho más simple:
👉 El test “no detecta” algo que sí está pasando.
Ahora, lo conecto con lo que dices de baja potencia, porque ahí está la clave:
La potencia del test = probabilidad de detectar correctamente cuando la alternativa es verdadera
Entonces:
👉 Baja potencia = alta probabilidad de error tipo II
O sea, si tu prueba tiene baja potencia, es más probable que digas:
“no hay raíz unitaria”
cuando en realidad sí la hay.
En series de tiempo esto es súper importante, porque por ejemplo:
El test ADF a veces tiene poca potencia en muestras pequeñas
Entonces puedes concluir que la serie es estacionaria…
cuando en realidad tiene raíz unitaria (y te equivocas en todo el modelo después 😅)
💡 Resumen rápido:
Error tipo I: rechazar algo que era verdad
Error tipo II: no rechazar algo que era falso
Baja potencia = más errores tipo II
Si quieres, lo conectamos directo con ADF y KPSS para que te quede clarísimo cuándo te puedes equivocar en cada uno.
[27/7, 12:36 a. m.] Juan Sosa: Dickey fuller
[27/7, 12:52 a. m.] Juan Sosa: DICKEY–FULLER (ADF) y pruebas relacionadas:

👉 ¿Qué prueba Dickey–Fuller (ADF)?

- Testea si hay raíz unitaria
- H0: hay raíz unitaria → serie NO estacionaria
- H1: no hay raíz unitaria → serie estacionaria

👉 Intuición:

- Si no rechazas H0 → la serie se comporta como random walk (tendencia estocástica)
- Si rechazas H0 → es estacionaria

👉 ADF (Augmented Dickey-Fuller)

- Versión más usada
- Corrige autocorrelación con rezagos
- Es el estándar en práctica

👉 Phillips-Perron (PP)

- También prueba raíz unitaria
- Corrige autocorrelación de otra forma (no con rezagos)
- Suele dar resultados similares a ADF

👉 KPSS (muy importante)

- Hipótesis al revés:
  H0: serie estacionaria
  H1: raíz unitaria

👉 Cómo usarlos juntos:

- ADF rechaza + KPSS no rechaza → estacionaria
- ADF no rechaza + KPSS rechaza → raíz unitaria
- Ambos no rechazan → duda (baja potencia)
- Ambos rechazan → conflicto (revisar modelo)

👉 Conclusión práctica:

- Raíz unitaria → tendencia estocástica → diferenciar (ARIMA)
- Sin raíz unitaria → estacionaria o tendencia determinística → ARMA o quitar tendencia