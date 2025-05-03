# MotionKit

**MotionKit** es un framework modular para animaciones, transiciones y feedback táctil en aplicaciones iOS y macOS. Diseñado para crear microinteracciones con propósito, adaptabilidad visual y soporte accesible, este framework te permitirá enriquecer la experiencia del usuario con facilidad y precisión.

---

## **Características principales**

- **Animaciones personalizadas y reversibles**: Crea animaciones flexibles que pueden ser encadenadas o revertidas.
- **Transiciones complejas**: Combina animaciones como **fade**, **scale** y **slide** para crear transiciones impactantes.
- **Presets reutilizables**: Animaciones prediseñadas basadas en patrones comunes de diseño (como **easeIn**, **easeOut**, etc.).
- **Feedback táctil semántico**: Proporciona retroalimentación háptica para acciones comunes como éxito, advertencia y error.
- **Soporte para `Reduce Motion`**: Adaptabilidad automática a la configuración de accesibilidad para usuarios con preferencias de menor movimiento.
- **Extensiones declarativas para SwiftUI**: Fácil integración con vistas de **SwiftUI**.
- **Vista de demostración**: Previsualiza el comportamiento de las animaciones y transiciones en tiempo real.

---

## **Requisitos**

- **iOS**: 15.0 o superior
- **macOS**: 10.15 o superior
- **Swift**: 6 o superior
- **Dependencias**: No requiere dependencias externas, completamente autónomo.

---

## **Instalación**

### **Con Swift Package Manager**

Añade la siguiente dependencia a tu archivo `Package.swift`:

```swift
.package(url: "https://github.com/tuusuario/MotionKit", from: "1.0.0")
```

Importa el framework en tu proyecto:

```swift
import MotionKit
```

---

## **Ejemplo de Uso**

Aquí tienes un ejemplo básico de cómo integrar **MotionKit** para aplicar una animación y transición a un `RoundedRectangle` en **SwiftUI**:

```swift
RoundedRectangle(cornerRadius: 12)
    .frame(width: 100, height: 100)
    .foregroundColor(.blue)
    .transition(.motionPop)
    .animation(.motionSafe(.easeOut(duration: MotionStyle.medium)), value: show)
```

En este caso, se utiliza:

- **`.motionPop`** para una transición personalizada de tipo "pop".
- **`.motionSafe`** para respetar la configuración de accesibilidad de **Reduce Motion**.

---

## **Documentación**

**MotionKit** está diseñado para ofrecer flexibilidad y poder para crear experiencias de usuario fluidas y agradables. A continuación, se detalla cómo utilizar las diferentes funcionalidades:

### **Animaciones y Curvas**

**MotionKit** te permite crear animaciones personalizadas basadas en curvas estándar como **easeIn**, **easeOut**, etc.

```swift
let animation = MotionAnimator.animate(.easeIn, duration: 0.3)
```

### **Transiciones Personalizadas**

Crea transiciones complejas usando animaciones combinadas:

```swift
public extension AnyTransition {
    static var motionPop: AnyTransition {
        .asymmetric(
            insertion: .scale.combined(with: .opacity),
            removal: .move(edge: .bottom).combined(with: .opacity)
        )
    }
}
```

### **Feedback Táctil**

Proporciona retroalimentación háptica de manera semántica, lo que permite adaptar el tipo de feedback según el contexto.

```swift
MotionActionFeedback.success.trigger()
```

### **Soporte para `Reduce Motion`**

Asegura que las animaciones respeten la preferencia del usuario para **Reduce Motion** en el dispositivo.

```swift
public static func motionSafe(_ animation: Animation) -> Animation {
    #if canImport(UIKit)
    if UIAccessibility.isReduceMotionEnabled {
        return .default
    }
    #endif
    return animation
}
```

---

## **Pruebas**

**MotionKit** incluye un conjunto de pruebas unitarias para garantizar que las animaciones, transiciones y feedback táctil funcionen como se espera.

```swift
@testable import MotionKit

final class MotionAnimatorTests: XCTestCase {
    func testEaseInAnimation() {
        let animation = MotionAnimator.animate(.easeIn, duration: 0.3)
        XCTAssertNotNil(animation)
    }
}
```

---

## **Licencia**

MIT © [Tu nombre]
