import ComputationalChemistryQmMmCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQmMmCanonicalLaneLean

structure QmMmCoupling where
  electrostaticEmbedding : String
  boundaryTreatment : String
  linkAtomType : String

def validElectrostaticEmbedding : List String :=
  ["mechanical", "electrostatic", "polarized"]

def validBoundaryTreatment : List String :=
  ["link_atoms", "frozen_orbitals", "capping_potentials"]

def validLinkAtomType : List String :=
  ["hydrogen", "halogen", "carbon"]

theorem coupling_is_admissible (c : QmMmCoupling) : Prop :=
  c.electrostaticEmbedding ∈ validElectrostaticEmbedding ∧
  c.boundaryTreatment ∈ validBoundaryTreatment ∧
  c.linkAtomType ∈ validLinkAtomType

end ComputationalChemistryQmMmCanonicalLaneLean
end HautevilleHouse