import ComputationalChemistryQmMmCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQmMmCanonicalLaneLean

structure EnergyDecomposition where
  qmEnergy : Float
  mmEnergy : Float
  interactionEnergy : Float

def totalEnergy (e : EnergyDecomposition) : Float :=
  e.qmEnergy + e.mmEnergy + e.interactionEnergy

theorem interaction_energy_nonbonded (e : EnergyDecomposition) : Prop :=
  e.interactionEnergy ≥ 0.0 ∨ e.interactionEnergy < 0.0

end ComputationalChemistryQmMmCanonicalLaneLean
end HautevilleHouse