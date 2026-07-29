import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure CatalyticKineticsPackage where
  rateEquation : Prop
  michaelisConstant : Float
  turnoverNumber : Float
  catalyticEfficiency : Float

structure ThermodynamicsPackage where
  bindingFreeEnergy : Float
  activationFreeEnergy : Float
  equilibriumConstant : Float

structure MechanismPackage where
  generalAcidBase : Prop
  metalIonCatalysis : Prop
  transitionStateStabilization : Prop

structure RibozymeAnalyticFoundation where
  kinetics : CatalyticKineticsPackage
  thermodynamics : ThermodynamicsPackage
  mechanism : MechanismPackage
  kineticsEvidence : kinetics.rateEquation
  thermodynamicsEvidence : thermodynamics.bindingFreeEnergy < 0.0
  mechanismEvidence : mechanism.generalAcidBase ∨ mechanism.metalIonCatalysis

def RibozymeAnalyticFoundationClosed (A : RibozymeAnalyticFoundation) : Prop :=
  A.kinetics.rateEquation ∧ A.thermodynamics.bindingFreeEnergy < 0.0 ∧
  (A.mechanism.generalAcidBase ∨ A.mechanism.metalIonCatalysis)

theorem ribozyme_analytic_foundation_closed (A : RibozymeAnalyticFoundation) :
    RibozymeAnalyticFoundationClosed A := by
  exact And.intro A.kineticsEvidence (And.intro A.thermodynamicsEvidence A.mechanismEvidence)

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse