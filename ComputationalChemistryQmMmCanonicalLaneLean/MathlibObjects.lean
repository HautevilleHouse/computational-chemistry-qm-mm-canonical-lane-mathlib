import ComputationalChemistryQmMmCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComputationalChemistryQmMmCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev BitString := List Bool
abbrev Language := Set BitString

structure DecisionProcedure where
  accepts : BitString -> Bool

structure WitnessRelation where
  accepts : BitString -> BitString -> Prop

structure PolynomialCertificateBound where
  degree : Nat

structure QmMmClassicalObject where
  language : Language
  witnessRelation : WitnessRelation
  bound : PolynomialCertificateBound

structure QmMmAdmittedObject where
  classicalObject : QmMmClassicalObject
  projectedLanguage : Language
  solver : DecisionProcedure

structure QmMmEndgameState where
  admittedObject : QmMmAdmittedObject

def Decides (M : DecisionProcedure) (L : Language) : Prop :=
  forall x : BitString, M.accepts x = true ↔ x ∈ L

end ComputationalChemistryQmMmCanonicalLaneLean
end HautevilleHouse