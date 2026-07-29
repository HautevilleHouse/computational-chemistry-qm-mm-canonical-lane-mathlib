import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQmMmCanonicalLaneLean

structure QmMmPotentialEnergySurface where
  qmAtoms : List String
  mmAtoms : List String
  qmEnergy : Float
  mmEnergy : Float
  couplingEnergy : Float
  totalEnergy : Float := qmEnergy + mmEnergy + couplingEnergy
  embeddingScheme : String -- "mechanical", "electrostatic", "polarizable"

definitionalEquality : QmMmPotentialEnergySurface → QmMmPotentialEnergySurface → Prop :=
  fun pes1 pes2 =>
    pes1.qmEnergy = pes2.qmEnergy ∧
    pes1.mmEnergy = pes2.mmEnergy ∧
    pes1.couplingEnergy = pes2.couplingEnergy ∧
    pes1.totalEnergy = pes2.totalEnergy ∧
    pes1.embeddingScheme = pes2.embeddingScheme

end ComputationalChemistryQmMmCanonicalLaneLean
end HautevilleHouse