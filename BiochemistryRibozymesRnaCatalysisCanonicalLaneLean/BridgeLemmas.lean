import BiochemistryRibozymesRnaCatalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RnaCatalysisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse