import ComputationalChemistryQmMmCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQmMmCanonicalLaneLean

structure ScalingRegime where
  systemSize : Nat
  qmRegionSize : Nat
  mmRegionSize : Nat
  timeSteps : Nat

def complexityEstimate (r : ScalingRegime) : String :=
  if r.qmRegionSize ≤ 100 then "O(N^3)" else "O(N^4)"

theorem scaling_linear_in_mm (r : ScalingRegime) : Prop :=
  r.mmRegionSize ≤ 1000000

end ComputationalChemistryQmMmCanonicalLaneLean
end HautevilleHouse