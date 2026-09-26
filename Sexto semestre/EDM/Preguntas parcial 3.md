# Banco de preguntas: Análisis de Correspondencias Simple (ACS) y Múltiple (ACM)
---

## PARTE 1 — ACS: Preguntas teóricas

1. ¿Qué busca el Análisis de Correspondencias Simple y sobre qué tipo de tabla se aplica?
Rta: El analisis de correspondencias busca analizar la asociación entre variable cualitativas, y se trabaja sobre arreglos de tablas de variables cualitativas
2. ¿Qué diferencia hay entre la tabla de frecuencias absolutas y la tabla de frecuencias relativas $F=\{f_{ij}\}$?
La tabla de frecuencias absolutas suma por cada fila la información de la fila anterior, mientras que le frecuencia relativa cada fila es independiente
3. Defina masa fila y masa columna. ¿Cómo se calculan a partir de $F$?
Masa fila y masa columna se refieren al peso asignado a esa categoria o individuo en relación con sus comparativas, como filas o columnas. Representa la asociación que lleva cada uno con respecto a la fila o columna a comparar. 
4. ¿Qué es un perfil fila y un perfil columna? ¿Por qué cada perfil debe sumar 1?
El perfil se refiere a la importancia de esta subcategoría para todas las categoria, deben sumar una porque todas se dividen sobre la sumatoria de ellas mismas, al sumar pues daría la suma total / suma total. 
5. ¿Qué representa el "perfil promedio" y por qué se compara cada perfil individual contra él?
Representa una comparativa entre que tanto se diferencia cada perfil con el perfil promedio, puede ser que tanto se desvían cada uno de el, 
6. Explique la relación entre independencia estadística y los perfiles fila/columna. Si dos variables fueran independientes, ¿cómo se verían los perfiles?
SI dos variables fueran independientes los perfiles fila serian iguales al promedio móvil. 
7. ¿Qué mide la distancia chi-cuadrado y por qué se usa esa métrica en lugar de la distancia euclídea ordinaria entre perfiles?
Mide la realidad menos lo esperado, se utiliza para poder arraigar una prueba estadística a el manejo de información. 
8. Escriba la fórmula del estadístico chi-cuadrado de Pearson y explique cada uno de sus términos ($O$, $E$, grados de libertad).
Chi 2 = sumatoria de (fij - fij_)**2 / cj               PENDIENTE
9. ¿Cómo se relaciona el chi-cuadrado con la inercia total del ACS? Escriba la fórmula.
La inercia total es el chi cuadrado/n, y se relación como la comparativa y estandarizando la con el peso para entender la asociación 
10. ¿Qué es la matriz de residuos estandarizados $S$? Escriba su fórmula matricial completa (con $D_r^{-1/2}$, $D_c^{-1/2}$).
S = Dr**(-1/2)(p-rc_t)Dc**(-1/2)
11. Demuestre (o justifique) por qué $\sum S^2$ es igual a la inercia total.
S**2 = (p-rc_y)**2 / rc     que es la definición de inercia total 
12. ¿Qué información aporta la descomposición en valores singulares (SVD) de $S$? ¿Qué representan $U$, $D$ y $V$?
Son la matrices de la descomposición, la u se asocia a los vectores propios de las filas y la v se asocia con los vectores propios de las columnas, D es la matriz de valores singulares que elevadas al cuadrado nos dan los valores propios y hablamos de su inercia por dimension, general las dimension
13. ¿Cuál es la diferencia entre valores singulares ($\lambda_\alpha$) y valores propios ($\lambda_\alpha^2$)?
Los valores propios son la inercia, y los valores singulares son la raíz de esa inercia. 
14. ¿Cuál es el número máximo de ejes (dimensiones) no triviales que puede tener un ACS de una tabla de $I$ filas y $J$ columnas?
El min(I-1,J-1)
15. Defina coordenadas **estándar** y coordenadas **principales**. ¿Cómo se obtienen unas a partir de las otras?
F = Dr**(-1/2)(U)D D es la diagonal de de los lambda 
G = Dc*(-1/2)(V)D
16. Escriba las ecuaciones de transición que permiten calcular las coordenadas de las filas a partir de las coordenadas de las columnas, y viceversa.
f_d = 1/raíz de lambda(d) * Dc**(-1) * p * G(d) d corresponde a la dimension que queremos sacar
g_d = 1/raíz de lambda(d) * Dr**(-1) * t(p) * F(d)
17. ¿Para qué sirven las ecuaciones de transición en la práctica? ¿Qué es la "representación simultánea"?
Para cuando tenemos las coordenadas de una de nuestras dos información y queremos pasar de una a la otra
18. ¿Qué es una fila o columna suplementaria? ¿Cómo se calculan sus coordenadas sin alterar el cálculo de los ejes?
Una fila o columna suplementaria es una construccion para comparar una nueva fila o columna con la los factores ya creados, es para visualizar como se representan nuestras proyecciones sobre esa nueva comparación. 
19. ¿Qué es la contribución absoluta de una fila o columna a un eje, y qué es el $\cos^2$ (calidad de representación)? ¿En qué se diferencian?
La contribución es el porcentaje que representa para la creación de ese factor, y el cos2 es la calidad de representación comparando con el círculo unitario como representación de cercania a esta nueva variable 
20. Al interpretar un mapa de ACS, ¿qué significa que dos puntos fila estén cerca entre sí? ¿Y que un punto fila esté cerca de un punto columna?
 Significa que son individuos bastante similares respecto a los factores creados como medida de comparación, que un punto fila este cerca a un punto columna es que ese individuo comparte las características de esa co;lumina. 
21. ¿Por qué no se pueden comparar directamente distancias entre un punto fila y un punto columna en el mapa (aunque estén en el mismo plano)? 
Las construcciones no se hacen sobre el mismo espacio, uno se hace sobre el espacio columna, y el otro sobre el espacio fila. 
22. ¿Qué pasa con la interpretación del ACS si el chi-cuadrado no es significativo?
Si el chi cuadrado no es significativo, es porque no hay suficiente información para decir que las filas y las columnas tienen asociación entre las variables, o sea que tenemos baja asociación y no es recomendable hacer ACP, solo como una medida exploratoria, 

---

## PARTE 2 — ACS: Preguntas prácticas

# ============================================================
# Análisis de Correspondencias Simple (ACS)
# Satisfacción del cliente x Nivel educativo
# PLANTILLA - completar cada sección
# ============================================================

# ---- 0. Crear datos ----
N <- matrix(
  c(20, 30, 10,
    15, 40, 25,
    10, 35, 45),
  nrow = 3, byrow = TRUE,
  dimnames = list(
    c("Insatisfecho", "Neutral", "Satisfecho"),
    c("Primaria", "Secundaria", "Universitario")
  )
)
print(N)

# ============================================================
# 23. Calcule k (total general) y la tabla de frecuencias
#     relativas F
# ============================================================
k <- sum(N)
F <- N/k
  
  
  # ============================================================
# 24. Calcule las masas fila (r) y las masas columna (c)
# ============================================================
r_masa <- rowSums(F)
c_masa <- colSums(F)

  
  
  # ============================================================
# 25. Calcule el perfil fila "Insatisfecho" y compárelo con
#     el perfil promedio (masa columna). ¿Hay evidencia de
#     asociación en esa fila?
# ============================================================

# Perfil fila

Pfil = sweep(N, 1, rowSums(N), "/")


perfil_insatisfecho <- Pfil[1,]
chi2 = (perfil_insatisfecho-c_masa)**2
chi2 = chi2 / c_masa
chi2 = sum(chi2)
chi2


  # Comparar perfil_insatisfecho con c_masa
  # TODO: interpretar la comparación
  
  
  # ============================================================
# 26. Calcule la tabla de frecuencias esperadas E bajo
#     independencia
# ============================================================
E <- outer(r,c)
  
# ============================================================
# 27. Calcule el estadístico chi-cuadrado y los grados de
#     libertad. ¿Es significativo con alpha = 0.05?
# ============================================================

# Frecuencias esperadas bajo independencia
n_total <- sum(N)
E <- outer(rowSums(N), colSums(N)) / n_total

chi2 <- sum((N - E)^2 / E)
gl <- (nrow(N) - 1) * (ncol(N) - 1)
valor_critico <- qchisq(0.95, df = gl)

chi2
gl
valor_critico

# Comparación y conclusión
if (chi2 > valor_critico) {
  cat("Chi2 =", round(chi2, 3), "> valor crítico =", round(valor_critico, 3),
      "\n=> Se rechaza H0: existe asociación significativa entre las variables filas y columnas (alpha = 0.05).\n")
} else {
  cat("Chi2 =", round(chi2, 3), "<= valor crítico =", round(valor_critico, 3),
      "\n=> No se rechaza H0: no hay evidencia suficiente de asociación entre las variables (alpha = 0.05).\n")
}

# Puede verificar con la función nativa de R:
chisq.test(N)
  
  # ============================================================
# 28. Calcule la inercia total del ACS para esta tabla
# ============================================================
s = sqrt(diag(1/r_masa))%*%(p-outer(r_masa,c_masa))%*%sqrt(diag(1/c_masa)) 
svd_s = svd(s)
lambda = svd_s$d
sum(lambda**2)   


  # ============================================================
# 29. lambda1 = 0.14, lambda2 = 0.05 (valores singulares).
#     Calcule el % de inercia explicado por cada eje.
# ============================================================
lambda1 <- 0.14
lambda2 <- 0.05

val_propio1 <- lambda1**2
val_propio2 <- lambda2**2
  
pct_eje1 <- val_propio1/(val_propio1+val_propio2)
pct_eje2 <- val_propio2/(val_propio1+val_propio2)
  
  
  # ============================================================
# 30. Coordenadas principales de columnas eje 1:
#     u1 = (-0.8, 0.1, 0.9), lambda1^2 = 0.0196.
#     Use la ecuacion de transicion para hallar la coordenada
#     de la fila "Satisfecho" en el eje 1.
#     (Necesitara su perfil fila y masa correspondiente)
# ============================================================
u1 <- c(-0.8, 0.1, 0.9)

  
f_satisfecho_eje1 <- (1/sqrt(0.0196))*diag(1/r_masa)%*%F%*%u1
  
  
  # ============================================================
# 31. Explique en palabras que esperaria ver en el mapa del
#     ACS de esta tabla, antes de calcularlo, dado el patron
#     de las frecuencias observadas.
# ============================================================
# TODO: respuesta en texto (comentario)


# ============================================================
# BONUS: ACS completo con un paquete (opcional, para verificar)
# ============================================================
# install.packages("FactoMineR")
# library(FactoMineR)
# res.ca <- CA(N, graph = TRUE)
# summary(res.ca)





# Masas de las filas
masa <- c(0.20, 0.25, 0.30, 0.25)
names(masa) <- c("Fila1", "Fila2", "Fila3", "Fila4")

# Coordenadas factoriales (filas) en los dos primeros ejes
F_filas <- matrix(c(
  0.45, 0.12,
  -0.30, 0.08,
  0.10, -0.25,
  -0.20, -0.15
), nrow = 4, byrow = TRUE)
rownames(F_filas) <- names(masa)
colnames(F_filas) <- c("Eje1", "Eje2")

# Valores singulares de los ejes
lambda1 <- 0.14
lambda2 <- 0.05


cont = sweep(F_filas**2, 1, masa, "*")
cont = sweep(cont, 2, c(lambda1**2,lambda2**2), "/")
cont*100


---

## PARTE 3 — ACM: Preguntas teóricas

32. ¿En qué se diferencia el ACM del ACS en cuanto al tipo de datos de entrada (número de variables, tipo de tabla)?
		ACM es para varias preguntas con varias opciones 
33. ¿Qué es la matriz indicadora $Z$ (matriz de dummies)? ¿Qué representa cada fila y cada columna?
Cada fila representa los individuos, y las columnas representan cada opción de pregunta, marcada con un 1, cuando la respuesta de ese individuo cumple. 
34. ¿Qué es la tabla de Burt y cómo se relaciona con la matriz indicadora $Z$? ($B = Z'Z$)
La tabla de burt es B = Z'Z es una tabla que construye y relaciona tipos de pregunta con los tipos de pregunta, por cada pregunta cuanta gente comparte otra respuesta 

35. ¿Por qué el ACM puede verse como "un ACS aplicado a la matriz indicadora $Z$"?
Realmente termina usando la misma descomposición en valores singulares

36. ¿Por qué en ACM aparecen valores propios "triviales" o espurios que deben descartarse antes de interpretar los ejes?
Porque tenemos un matriz con valores propios cercanos a 0
37. Escriba la fórmula de la inercia total esperada en ACM bajo independencia en función de $J$ y $p$.
IT = P-Q/Q
38. ¿Qué representa físicamente la nube de individuos y la nube de modalidades en el ACM? ¿Viven en el mismo espacio?
39. Escriba la fórmula de las coordenadas de las modalidades $G_{acm}$ a partir de los vectores propios $V$ y los valores propios $\Lambda$.
G = V %*% D 
D = diag(sqet(val_prop))
40. Escriba la fórmula de la contribución de una modalidad $j$ al eje $k$: $ctr_{jk}$. Explique el papel del factor $1/p$.
Contr = (1/p) * G**2 / val_prop**2
41. ¿Cómo se interpreta que una modalidad tenga una contribución alta pero un $\cos^2$ bajo en un eje?
La modalidad participa activamente en definir la orientación del eje, pero su ubicación exacta en el gráfico (su distancia y dirección respecto al origen en ese plano) no debe interpretarse con confianza, porque gran parte de su variabilidad se explica en otras dimensiones
42. ¿Qué cuidado especial debe tenerse con las modalidades poco frecuentes (baja masa) al interpretar el mapa del ACM?
Que se ubican a los extremos de los mapas y no significa que esten bien representados y es una problematica


---

## PARTE 4 — ACM: Preguntas prácticas

Con este mini dataset de 5 personas y 2 variables categóricas:

| Persona | Color | Tamaño |
| ------- | ----- | ------ |
| 1       | Rojo  | Grande |
| 2       | Azul  | Chico  |
| 3       | Rojo  | Chico  |
| 4       | Verde | Grande |
| 5       | Azul  | Grande |
|         |       |        |

47. Construya a mano la matriz indicadora $Z$ (filas = personas, columnas = modalidades).
48. Calcule $n$, $p$ y $J$ para este ejemplo.
49. Calcule la masa de la modalidad "Rojo" y la masa de la modalidad "Grande".
50. Calcule la inercia total esperada bajo independencia usando la fórmula $J/p - 1$.
51. Si tras la SVD el primer valor propio útil es $\lambda_1^2 = 0.42$, y $p=2$, calcule qué porcentaje representa sobre la inercia total esperada del punto 50.
52. Si el vector propio de la modalidad "Rojo" en el eje 1 es $V_{Rojo,1} = 0.35$ y $\lambda_1 = \sqrt{0.42}$, calcule su coordenada principal $G_{acm}$ en ese eje.
53. Con esa misma coordenada, calcule la contribución de "Rojo" al eje 1 usando $ctr_{jk} = \dfrac{(1/p)\cdot G_{jk}^2}{\lambda_k^2}$.
54. Interprete: si "Rojo" y "Grande" aparecen muy cerca en el mapa del ACM, ¿qué le diría a alguien que no sabe estadística sobre la relación entre esas dos modalidades?
> # Masas de las filas
> masa <- c(0.20, 0.25, 0.30, 0.25)
> names(masa) <- c("Fila1", "Fila2", "Fila3", "Fila4")
> > # Coordenadas factoriales (filas) en los dos primeros ejes
> F_filas <- matrix(c(
+ 0.45, 0.12,
+ -0.30, 0.08,
+ 0.10, -0.25,
+ -0.20, -0.15
+ ), nrow = 4, byrow = TRUE)
> rownames(F_filas) <- names(masa)
> colnames(F_filas) <- c("Eje1", "Eje2")
> > # Valores singulares de los ejes
> lambda1 <- 0.14
> lambda2 <- 0.05
> > > cont = sweep(F_filas**2, 1, masa, "*")
> cont = sweep(cont, 2, c(lambda1**2,lambda2**2), "/")
> cont*100
           Eje1  Eje2
Fila1 206.63265 115.2
Fila2 114.79592  64.0
Fila3  15.30612 750.0
Fila4  51.02041 225.0
> > > > datos <- data.frame(
+ Persona = 1:5,
+ Color   = factor(c("Rojo", "Azul", "Rojo", "Verde", "Azul")),
+ Tamaño  = factor(c("Grande", "Chico", "Chico", "Grande", "Grande"))
+ )
> > # Dummies manuales, una columna por cada nivel (sin dropear referencia)
> Z <- cbind(
+ Intercepto   = 1,
+ ColorRojo    = as.numeric(datos$Color == "Rojo"),
+ ColorAzul    = as.numeric(datos$Color == "Azul"),
+ ColorVerde   = as.numeric(datos$Color == "Verde"),
+ TamañoChico  = as.numeric(datos$Tamaño == "Chico"),
+ TamañoGrande = as.numeric(datos$Tamaño == "Grande")
+ )
> > Z = Z[,-1]
> > ################################################################################
> # 1. Construya a mano la matriz indicadora Z (filas = personas, columnas = modalidades).
> ################################################################################
> > > > ################################################################################
> # 2. Calcule n, p y J para este ejemplo.
> ################################################################################
> > n = nrow(Z)
> p = ncol(Z)
> J = c(3,2)
> > ################################################################################
> # 3. Calcule la masa de la modalidad "Rojo" y la masa de la modalidad "Grande".
> ################################################################################
> > Q=2
> masa_modalidad = colSums(Z) / (n*Q)
> > > ################################################################################
> # 4. Calcule la inercia total esperada bajo independencia usando la fórmula:
> #    J/p - 1.
> ################################################################################
> > i_t = (p-Q)/Q
> i_t
[1] 1.5
> > ################################################################################
> # 5. Si tras la SVD el primer valor propio útil es λ₁² = 0.42, y p = 2,
> #    calcule qué porcentaje representa sobre la inercia total esperada
> #    obtenida en el punto 4.
> ################################################################################
> > y = 0.42/i_t*100
> > ################################################################################
> # 6. Si el vector propio de la modalidad "Rojo" en el eje 1 es
> #    V_Rojo,1 = 0.35 y λ₁ = sqrt(0.42),
> #    calcule su coordenada principal G_ACM en ese eje.
> ################################################################################
> > > y =0.35 * sqrt(sqrt(0.42))
> ################################################################################
> # 7. Con esa misma coordenada, calcule la contribución de "Rojo" al eje 1
> #    usando:
> #
> #    ctr_jk = ((1/p) * G_jk^2) / λ_k²
> ################################################################################
> > ctr = ((1/0.2) * y**2) / 0.42
> ctr
[1] 0.945108
> ################################################################################
> # 8. Interprete:
> #    Si "Rojo" y "Grande" aparecen muy cerca en el mapa del ACM,
> #    ¿qué le diría a alguien que no sabe estadística sobre la relación
> #    entre esas dos modalidades?
> ################################################################################

