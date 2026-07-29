import ComputationalChemistryQmMmCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQmMmCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def qmmmProjection : Projection QmMmEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem qmmm_projection_idempotent (x : QmMmEndgameState) :
    qmmmProjection.toFun (qmmmProjection.toFun x) = qmmmProjection.toFun x := by
  exact qmmmProjection.idempotent x

end ComputationalChemistryQmMmCanonicalLaneLean
end HautevilleHouse