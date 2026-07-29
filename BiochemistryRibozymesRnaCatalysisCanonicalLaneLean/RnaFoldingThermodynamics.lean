import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure NearestNeighborThermodynamics where
  freeEnergyParams : Type
  enthalpyParams : Type
  entropyParams : Type
  basePairStacking : Prop
  loopDestabilization : Prop
  meltingTemperature : Prop

structure NearestNeighborThermodynamicsEvidence (T : NearestNeighborThermodynamics) where
  basePairStackingClosed : T.basePairStacking
  loopDestabilizationClosed : T.loopDestabilization
  meltingTemperatureClosed : T.meltingTemperature

def NearestNeighborThermodynamicsClosed (T : NearestNeighborThermodynamics) : Prop :=
  T.basePairStacking ∧ T.loopDestabilization ∧ T.meltingTemperature

theorem nearest_neighbor_thermodynamics_closed_from_evidence
    (T : NearestNeighborThermodynamics) (E : NearestNeighborThermodynamicsEvidence T) :
    NearestNeighborThermodynamicsClosed T := by
  exact And.intro E.basePairStackingClosed
    (And.intro E.loopDestabilizationClosed E.meltingTemperatureClosed)

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse