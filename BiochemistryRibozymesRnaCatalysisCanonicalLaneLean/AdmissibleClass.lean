import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure RnaCatalysisObject where
  ribozyme : Type
  activeSite : Type
  catalyticActivity : Prop

structure RnaCatalysisAdmittedObject where
  object : RnaCatalysisObject
  activeSiteFunctional : Prop
  catalyticMechanismKnown : Prop
  conclusion : catalyticMechanismKnown ∧ activeSiteFunctional

structure RnaCatalysisState where
  object : RnaCatalysisAdmittedObject

def RnaCatalysisWitnessClosed (O : RnaCatalysisAdmittedObject) : Prop :=
  O.conclusion

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse