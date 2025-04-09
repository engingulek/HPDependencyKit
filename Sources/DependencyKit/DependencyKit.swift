// The Swift Programming Language
// https://docs.swift.org/swift-book

import Swinject

public final class DependencyRegister {
    public static let shared = DependencyRegister()
  public  let container = Container()
    
  

   public func resolve<T>(_ type: T.Type) -> T {
        guard let dependency = container.resolve(type) else {
            fatalError("Dependency for \(type) is not registered")
        }
        return dependency
    }

      
  
    
    
}
