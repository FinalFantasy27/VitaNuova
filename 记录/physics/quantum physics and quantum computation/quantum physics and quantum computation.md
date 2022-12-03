
If a (electron)'s spin can be described by a wave function which is a superposition of states, 
$\ket{\psi}=a\ket{0}+b\ket{1}$
the probability of measuring $\ket{0}$ state and $\ket{1}$ state:
$P(0)=|\braket{0|\psi}|^2=|a\braket{0|0}+b\braket{0|1}|^2=|a\cdot1 +b\cdot 0|^2=a^2,\cdots$

Suppose there are 2 (electrons), their spins are $\ket{\psi_1}=a_1\ket{0}+b_1\ket{1}, \ket{\psi_2}=a_2\ket{0}+b_2\ket{1}$,

then $\ket{\psi_1\psi_2}=(a_1\ket{0}+b_1\ket{1})(a_2\ket{0}+b_2\ket{1})=a_1a_2\ket{00}+a_1b_2\ket{01}+b_1a_2\ket{10}+b_1b_2\ket{11}$
the probability of measuring electron 1 in $\ket{0}$ state and 2 in $\ket{1}$ state is $|\braket{01|\psi_1\psi_2}|^2=(a_1b_2)^2$

Inner product on the tensor products

Suppose $\ket{\psi_1},\ket{\phi_1}\in H_1$ and $\ket{\psi_2},\ket{\phi_2}\in H_2$ where $H_1, H_2$ are two Hilbert spaces. Then $\braket{\phi_1\phi_2|\psi_1\psi_2}=\braket{\phi_1|\psi_1}_1\braket{\phi_2|\psi_2}_2$ 
where $\braket{\cdot|\cdot}_1,\braket{\cdot|\cdot}_2$ are inner product defined on $H_1$ and $H_2$ respectively.
Example: $\braket{011|010}=\braket{0|0}\braket{1|1}\braket{1|0}=1\cdot1\cdot0=0$

inner product of complex functions, $\ket{\psi} and \ket{\phi}$
$\braket{\phi|\psi}=\int^{\infty}_{-\infty}\bar{\phi}(x)\psi(x)dx$ (if $\phi,\psi$ are functions)
where $\bar{\phi}$ is the conjugate of $\phi$
$\braket{\phi|\psi}=\bar{\phi}^\dag\psi=\bar{\phi}^T\psi$ (if $\phi$ and $\psi$ are column vectors)

Hilbert space is a complex vector space with inner product.

Outer product $\otimes$

$  | \psi\rangle \langle\psi |$ 

projection operator 

e.g. Let $\psi=\sqrt{\frac{1}{2}}\ket{0}+\sqrt{\frac{1}{2}}\ket{1}$. Then $\widehat{P}_0\equiv\ket{0}\bra{0}$ projects the wave function onto $\ket{0}$ state.
${P}_0\ket{\psi}=\sqrt{\frac{1}{2}}\ket{0}\braket{0|0}+\sqrt{\frac{1}{2}}\ket{0}\braket{0|1}=\sqrt{\frac{1}{2}}\ket{0}$

Spectral theorem (谱定理)
Suppose the eigenvalues $\lambda_1,\lambda_2,\cdots,\lambda_n$ of $\widehat{A}$ are real, and their corresponding eigenvectors are $\ket{\psi_1},\ket{\psi_2},\cdots,\ket{\psi_n}$. Then the operator $\widehat{A}$ can be written as 
$\widehat{A}=\sum_{i=1}^n \lambda_i\ket{\psi_i}\bra{\psi_i}$
Moreover, $\{\ket{\psi_1},\ket{\psi_2},\cdots,\ket{\psi_n}\}$ form a complete basis for the Hilbert Space $\widehat{A}$ living in.
Sometimes this is called spectral decomposition of operator $\widehat{A}$

From spectral theorem, we can get completeness relation: $\{\ket{\psi_1},\ket{\psi_2},\cdots,\ket{\psi_n}\}$ is a complete basis iff 
$I=\sum^n_{i=1}\ket{\psi_i}\bra{\psi_i}$ where $I$ is an identity matrix

Bloch Sphere

a normalized quantum state: $\ket{\psi}=a\ket{0}+\ket{1}$, with $|a|^2+|b|^2=1$,
it must be on a "sphere", using polar angle, $\theta$, and azimuthal angle, $\phi$, we can wirte $\ket{\psi}=\begin{bmatrix}
\cos\frac{\theta}{2}\\
e^{i\phi}\sin\frac{\theta}{2}
\end{bmatrix}$

A pure state is a quantum state can be represented as a single vector. That means, all vectors on the surface Bloch sphere are pure states. Since they can be written as the above. A mixed state is vector inside Bloch sphere.

define purity of a quantum state $\ket{\psi}$ as
$\gamma=Tr(\rho^2)$, $Tr$ is trace, 也就是主对角线上的元素全部相加, $\rho=\ket{\psi_i}\bra{\psi_i}$ is the density operator of $\ket{\psi}$
e.g.$Tr(\begin{bmatrix}
1&&\\
&2&\\
&&3    
\end{bmatrix})=1+2+3$
$Tr(\begin{bmatrix}
1&2\\
3&4    
\end{bmatrix})=1+4$

purity measures how much a state is mixed.
$\frac{1}{d}\le \gamma\le1$ where d is the dimension of the Hilbert space,
$\gamma=1$ if it's a pure state, $\gamma=\frac{1}{d}$ if it's a completely mixed state.

e.g. exercise 
Let $\ket{\psi}=\frac{\ket{0}-\ket{1}}{\sqrt{2}}$, calculate its purity. (solution: 1)

For a given pure state $\ket{\psi}=[\cos\frac{\theta}{2},e^{i\phi}\sin\frac{\theta}{2}]^T$, the density operator $\rho=\ket{\psi}\bra{\psi}=\frac{1}{2}\begin{bmatrix}
1+ \cos\theta&e^{-i\phi}\sin\theta\\
e^{i\phi}\sin\theta&1-\cos\theta
\end{bmatrix}=\frac{1}{2}(I+xX+yY+zZ)=\frac{1}{2}(I+\vec{r}_\rho\cdot\vec{\sigma})$
where $\vec{\sigma}=(X,Y,Z)$ is the vector of Pauli matrices and 
$\vec{r}_\rho=(x,y,z)=(\sin\theta\cos\theta,\sin\theta\sin\theta,\cos\theta)$ is called the unit Bloch vector. It is the Cartesian representation of $\ket{\psi}$

Suppose $\vec{r}_1,\vec{r}_2$ are the Bloch vectors of two pure states $\ket{\psi_1}, \ket{\psi_2}$, then
$|\braket{\psi_1|\psi_2}|^2=Tr(\rho_1\rho_2)=\frac{1}{2}(1+\vec{r}_1\cdot\vec{r}_2)$
this formula relates the inner product in $H$ and inner product in $R^3$

suppose $\braket{\psi_1|\psi_2}=0$ (orthogonal in $H$),
using the formula, $|\braket{\psi_1|\psi_2}|^2=\frac{1}{2}(1+\vec{r}_1\cdot\vec{r}_2)$
we have $\vec{r}_1\cdot\vec{r}_2=-1$. $\ket{\psi_1}$ and $\ket{\psi_2}$ have opposite directions

(orthogonal in Bloch sphere geometry)

Hadamard gate
$\frac{1}{\sqrt{2}}\begin{bmatrix}
1&1\\
1&-1
\end{bmatrix}$
, Apply it to $\ket{0}$ and $\ket{1}$, we get $\frac{\ket{0}+\ket{1}}{\sqrt{2}}$ and $\frac{\ket{0}-\ket{1}}{\sqrt{2}}$ respectively

Controlled NOT gate
$\begin{bmatrix}
1&0&0&0\\
0&1&0&0\\
0&0&0&1\\
0&0&1&0
\end{bmatrix}$
exercise: what happen when CNOT gate is applied to $\ket{00},\ket{01},\ket{10}$ and $\ket{11}$?

Reversible circuits 

Deutsch–Jozsa algorithm

Simon's algorithm

Grover's algorithm

Quantum Fourier Transform

Shor's algorithm

Fault Tolerance Computing