import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def ribozymeProjection : Projection RibozymeEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem ribozyme_projection_idempotent (x : RibozymeEndgameState) :
    ribozymeProjection.toFun (ribozymeProjection.toFun x) = ribozymeProjection.toFun x := by
  exact ribozymeProjection.idempotent x

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse