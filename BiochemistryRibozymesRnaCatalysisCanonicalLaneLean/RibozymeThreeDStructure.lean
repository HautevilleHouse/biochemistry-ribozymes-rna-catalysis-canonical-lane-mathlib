import BiochemistryRibozymesRnaCatalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure RibozymeStructurePackage where
  pdbId : String
  resolution : ℝ
  activeSiteResidues : List String
  secondaryStructure : String
  catalyticCoreFold : Type
  catalyticCoreTopology : TopologicalSpace catalyticCoreFold
  rnaBackboneConformation : Prop
  activeSiteGeometry : Prop

structure StructureEvidence (S : RibozymeStructurePackage) where
  pdbIdClosed : S.pdbId = S.pdbId
  resolutionClosed : S.resolution > 0
  activeSiteResiduesClosed : S.activeSiteResidues ≠ []
  secondaryStructureClosed : S.secondaryStructure ≠ ""
  rnaBackboneConformationClosed : S.rnaBackboneConformation
  activeSiteGeometryClosed : S.activeSiteGeometry

def RibozymeStructureClosed (S : RibozymeStructurePackage) : Prop :=
  S.resolution > 0 ∧ S.activeSiteResidues ≠ [] ∧ S.secondaryStructure ≠ "" ∧
  S.rnaBackboneConformation ∧ S.activeSiteGeometry

theorem ribozyme_structure_closed_from_evidence (S : RibozymeStructurePackage) (E : StructureEvidence S) :
    RibozymeStructureClosed S := by
  exact And.intro E.resolutionClosed
    (And.intro E.activeSiteResiduesClosed
      (And.intro E.secondaryStructureClosed
        (And.intro E.rnaBackboneConformationClosed E.activeSiteGeometryClosed)))

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse
