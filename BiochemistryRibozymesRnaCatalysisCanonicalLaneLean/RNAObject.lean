import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RibozymeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RibozymeAdmittedObject where
  space : RibozymeSpace
  catalyticActivity : Prop
  substrateBinding : Prop
  productRelease : Prop
  transitionStateStabilization : Prop
  conclusion : catalyticActivity ∧ substrateBinding ∧ productRelease ∧ transitionStateStabilization

structure RibozymeEndgameState where
  object : RibozymeAdmittedObject

def RibozymeWitnessClosed (O : RibozymeAdmittedObject) : Prop :=
  O.conclusion

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse