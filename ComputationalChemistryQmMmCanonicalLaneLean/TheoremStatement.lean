import canonicalLaneMathlib.ReviewerBridge

namespace HautevilleHouse
namespace ComputationalChemistryQmMmCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "computational_chemistry_qm_mm",
    theoremName := "QM/MM Boundary Closure",
    theoremObject := "Multi-scale QM/MM coupling theorem with admissible class conditions",
    classicalBoundary := "Full QM/MM embedding remains open",
    manifoldConstrainedStatement := "Admissible class closed: QM/MM bridge satisfied and remainder recorded",
    certificateLane := "qm_mm_constrained",
    carriedRemainder := "Classical MM coupling outside admissible class remains open"
  }

end ComputationalChemistryQmMmCanonicalLaneLean
end HautevilleHouse