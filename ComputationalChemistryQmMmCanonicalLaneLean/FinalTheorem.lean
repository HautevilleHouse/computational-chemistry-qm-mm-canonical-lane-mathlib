import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalChemistryQmMmCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ComputationalChemistryQmMmCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputationalChemistryQmMmCanonicalLaneLean

def ConstrainedQmMmClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_qm_mm_endgame (A : AdmissibleClass) :
    ConstrainedQmMmClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalChemistryQmMmCanonicalLaneLean
end HautevilleHouse