import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalChemistryQmMmCanonicalLaneLean.PotentialEnergySurface

namespace HautevilleHouse
namespace ComputationalChemistryQmMmCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.solverDecidesProjectedLanguage

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.solverDecidesProjectedLanguage

end ComputationalChemistryQmMmCanonicalLaneLean
end HautevilleHouse