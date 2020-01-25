.class public Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
.super Ljava/lang/Object;
.source "XSDHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;,
        Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;,
        Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field static final ATTRIBUTEGROUP_TYPE:I = 0x2

.field static final ATTRIBUTE_TYPE:I = 0x1

.field private static final CIRCULAR_CODES:[Ljava/lang/String;

.field private static final COMP_TYPE:[Ljava/lang/String;

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DEBUG_NODE_POOL:Z = false

.field protected static final DISALLOW_DOCTYPE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field static final ELEMENT_TYPE:I = 0x3

.field private static final ELE_ERROR_CODES:[Ljava/lang/String;

.field private static final EMPTY_TABLE:Ljava/util/Hashtable;

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field static final GROUP_TYPE:I = 0x4

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field static final IDENTITYCONSTRAINT_TYPE:I = 0x5

.field private static final INC_KEYREF_STACK_AMOUNT:I = 0x2

.field private static final INC_STACK_SIZE:I = 0xa

.field private static final INIT_KEYREF_STACK:I = 0x2

.field private static final INIT_STACK_SIZE:I = 0x1e

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field private static final NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field static final NOTATION_TYPE:I = 0x6

.field private static final NS_ERROR_CODES:[[Ljava/lang/String;

.field public static final REDEF_IDENTIFIER:Ljava/lang/String; = "_fn3dktizrknc9pi"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field protected static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field static final TYPEDECL_TYPE:I = 0x7

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private fAllContext:[I

.field private fAllTNSs:Ljava/util/Vector;

.field fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

.field private fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

.field fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

.field fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

.field fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

.field fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

.field protected fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

.field private fDependencyMap:Ljava/util/Hashtable;

.field private fDoc2SystemId:Ljava/util/Hashtable;

.field private fDoc2XSDocumentMap:Ljava/util/Hashtable;

.field fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

.field private fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field private fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

.field private fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

.field fHiddenNodes:Ljava/util/Hashtable;

.field private fHonourAllSchemaLocations:Z

.field private fImportMap:Ljava/util/Hashtable;

.field private fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fKeyrefNamespaceContext:[[Ljava/lang/String;

.field private fKeyrefStackPos:I

.field fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

.field private fKeyrefs:[Lmf/org/w3c/dom/Element;

.field private fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

.field private fLastSchemaWasDuplicate:Z

.field private fLocalElemNamespaceContext:[[Ljava/lang/String;

.field private fLocalElemStackPos:I

.field private fLocalElementDecl:[Lmf/org/w3c/dom/Element;

.field private fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

.field private fLocationPairs:Ljava/util/Hashtable;

.field fNamespaceGrowth:Z

.field protected fNotationRegistry:Ljava/util/Hashtable;

.field fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

.field private fParent:[Lmf/org/apache/xerces/xs/XSObject;

.field private fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private fRedefine2NSSupport:Ljava/util/Hashtable;

.field private fRedefine2XSDMap:Ljava/util/Hashtable;

.field private fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

.field private fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

.field private fReportedTNS:Ljava/util/Vector;

.field private fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

.field private fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

.field fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

.field fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

.field fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field fTolerateDuplicates:Z

.field private fTraversed:Ljava/util/Hashtable;

.field fUniqueOrKeyTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

.field private fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

.field private fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedAttributeRegistry:Ljava/util/Hashtable;

.field private fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedElementRegistry:Ljava/util/Hashtable;

.field private fUnparsedElementRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedGroupRegistry:Ljava/util/Hashtable;

.field private fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

.field private fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedNotationRegistry:Ljava/util/Hashtable;

.field private fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

.field private fUnparsedRegistriesExt:[Ljava/util/Hashtable;

.field private fUnparsedTypeRegistry:Ljava/util/Hashtable;

.field private fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

.field private fValidateAnnotations:Z

.field fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

.field fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

.field private fXSDocumentInfoRegistry:Ljava/util/Hashtable;

.field private xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->EMPTY_TABLE:Ljava/util/Hashtable;

    const/16 v0, 0x8

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "src-include.2.1"

    const-string v3, "src-include.2.1"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "src-redefine.3.1"

    const-string v3, "src-redefine.3.1"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "src-import.3.1"

    const-string v4, "src-import.3.2"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "TargetNamespace.1"

    const-string v5, "TargetNamespace.2"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const-string v2, "TargetNamespace.1"

    const-string v6, "TargetNamespace.2"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v1, v6

    const-string v2, "TargetNamespace.1"

    const-string v7, "TargetNamespace.2"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x6

    aput-object v2, v1, v7

    const-string v2, "TargetNamespace.1"

    const-string v8, "TargetNamespace.2"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v1, v8

    sput-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    const-string v9, "src-include.1"

    const-string v10, "src-redefine.2"

    const-string v11, "src-import.2"

    const-string v12, "schema_reference.4"

    const-string v13, "schema_reference.4"

    const-string v14, "schema_reference.4"

    const-string v15, "schema_reference.4"

    const-string v16, "schema_reference.4"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->ELE_ERROR_CODES:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attribute declaration"

    aput-object v1, v0, v3

    const-string v1, "attribute group"

    aput-object v1, v0, v4

    const-string v1, "element declaration"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "group"

    aput-object v1, v0, v5

    const-string v1, "identity constraint"

    aput-object v1, v0, v6

    const-string v1, "notation"

    aput-object v1, v0, v7

    const-string v1, "type definition"

    aput-object v1, v0, v8

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

    const-string v9, "Internal-Error"

    const-string v10, "Internal-Error"

    const-string v11, "src-attribute_group.3"

    const-string v12, "e-props-correct.6"

    const-string v13, "mg-props-correct.2"

    const-string v14, "Internal-Error"

    const-string v15, "Internal-Error"

    const-string v16, "st-props-correct.2"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->CIRCULAR_CODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationRegistry:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const/4 v5, 0x6

    aput-object v2, v1, v5

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const/4 v5, 0x7

    aput-object v2, v1, v5

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSDocumentInfoRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    const/16 v2, 0x1e

    new-array v5, v2, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    new-array v5, v2, [Lmf/org/w3c/dom/Element;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    new-array v5, v2, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    new-array v5, v2, [I

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    new-array v5, v2, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v5, Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    new-array v1, v4, [Lmf/org/w3c/dom/Element;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    new-array v1, v4, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    new-array v1, v4, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    filled-new-array {v4, v3}, [I

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>()V

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    new-instance p1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    return-void
.end method

.method private addGlobalAttributeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    move p1, v3

    :goto_1
    if-lt p1, v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v5, p1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v5, v2}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {p2, v1, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v2, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    goto :goto_2

    :cond_3
    if-eq v6, v5, :cond_4

    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private addGlobalAttributeGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 7

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    move p1, v3

    :goto_1
    if-lt p1, v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v5, p1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v5, v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {p2, v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    goto :goto_2

    :cond_3
    if-eq v6, v5, :cond_4

    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private addGlobalComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)V
    .locals 3

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getType()S

    move-result v0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    if-eq v0, v2, :cond_5

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    if-nez v0, :cond_7

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    if-nez v0, :cond_7

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    check-cast p1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getAnonymous()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    const-string v0, ""

    invoke-virtual {p2, v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getScope()S

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    :cond_3
    const-string v0, ""

    invoke-virtual {p2, v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getScope()S

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    :cond_4
    const-string v0, ""

    invoke-virtual {p2, v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    :cond_6
    const-string v0, ""

    invoke-virtual {p2, v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    if-nez v0, :cond_7

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addGlobalComponents(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 4

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportDependencies(Ljava/util/Hashtable;)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/XSObject;

    invoke-direct {p0, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addGlobalElementDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 7

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    move p1, v3

    :goto_1
    if-lt p1, v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v5, p1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v5, v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p2, v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private addGlobalGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 7

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    move p1, v3

    :goto_1
    if-lt p1, v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v5, p1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v5, v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    invoke-virtual {p2, v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    goto :goto_2

    :cond_3
    if-eq v5, v6, :cond_4

    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private addGlobalNotationDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 7

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    move p1, v3

    :goto_1
    if-lt p1, v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v5, p1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v5, v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    invoke-virtual {p2, v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    goto :goto_2

    :cond_3
    if-eq v6, v5, :cond_4

    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private addGlobalTypeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 7

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_2

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->getLength()I

    move-result v6

    move p1, v3

    :goto_1
    if-lt p1, v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v5, p1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v5, v1}, Lmf/org/apache/xerces/xs/datatypes/ObjectList;->item(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {p2, v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    goto :goto_2

    :cond_3
    if-eq v6, v5, :cond_4

    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v6, :cond_4

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSharingError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private addGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-void

    :cond_0
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p2

    :cond_1
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNewGrammarLocations(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNewImportedGrammars(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNewGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-void
.end method

.method private addGrammars(Ljava/util/Vector;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    if-eq v3, v4, :cond_1

    invoke-direct {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addNewGrammarComponents(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 0

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resetComponents()V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalElementDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalAttributeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalAttributeGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalGroupDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalTypeDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalNotationDecls(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-void
.end method

.method private addNewGrammarLocations(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object p1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/StringList;->size()I

    move-result v0

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addNewImportedGrammars(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportList(Ljava/util/Vector;Ljava/util/Vector;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addRelatedAttribute(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getScope()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object p4

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeComponents(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addRelatedElement(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getScope()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object p4

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedElementComponents(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getAnonymous()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object p4

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addNamespaceDependency(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedTypeComponents(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private canAddComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Z
    .locals 5

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getType()S

    move-result v2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    return v1

    :pswitch_0
    invoke-virtual {p2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p2

    if-ne p2, p1, :cond_3

    return v1

    :pswitch_1
    invoke-virtual {p2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p2

    if-ne p2, p1, :cond_3

    return v1

    :pswitch_2
    invoke-virtual {p2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    if-ne p2, p1, :cond_3

    return v1

    :pswitch_3
    invoke-virtual {p2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p2

    if-ne p2, p1, :cond_3

    return v1

    :pswitch_4
    invoke-virtual {p2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p2

    if-ne p2, p1, :cond_3

    return v1

    :cond_2
    invoke-virtual {p2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p2

    if-ne p2, p1, :cond_3

    return v1

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private canAddComponents(Ljava/util/Vector;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/xs/XSObject;

    invoke-direct {p0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->canAddComponent(Lmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I
    .locals 8

    invoke-static {p4}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p4

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-nez p4, :cond_0

    return v7

    :cond_0
    invoke-static {p4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I

    move-result v1

    add-int/2addr v7, v1

    goto/16 :goto_2

    :cond_1
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {p4, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findQName(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v3, v2}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {p4, v2, p3}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    invoke-interface {p4, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    invoke-interface {p4, v3}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, "src-redefine.6.1.2"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-virtual {p0, v2, v3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_5
    :goto_2
    invoke-static {p4}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p4

    goto/16 :goto_0
.end method

.method private containedImportedGrammar(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createAnnotationValidator()V
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/parsers/XML11Configuration;

    invoke-direct {v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    :goto_0
    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v2, "http://apache.org/xml/properties/locale"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListWith(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListFor(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v0
.end method

.method private createTraversers()V
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUniqueOrKeyTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    return-void
.end method

.method private doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    instance-of v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->getDocumentURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method private emptyString2Null(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private existingGrammars(Ljava/util/Vector;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private expandComponents([Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_1

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v1, p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSObject;

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedComponents(Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Vector;Ljava/util/Hashtable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private expandGrammars([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/util/Vector;
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_4

    move v3, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v3, p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-gez p1, :cond_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private expandImportList(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private expandRelatedAttributeComponents(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method private expandRelatedAttributeGroupComponents(Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeUsesComponents(Lmf/org/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method private expandRelatedAttributeUseComponents(Lmf/org/apache/xerces/xs/XSAttributeUse;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSAttributeUse;->getAttrDeclaration()Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedAttribute(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method private expandRelatedAttributeUsesComponents(Lmf/org/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObjectList;->size()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/XSAttributeUse;

    invoke-direct {p0, v2, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeUseComponents(Lmf/org/apache/xerces/xs/XSAttributeUse;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private expandRelatedComplexTypeComponents(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeUsesComponents(Lmf/org/apache/xerces/xs/XSObjectList;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedParticleComponents(Lmf/org/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    return-void
.end method

.method private expandRelatedComponents(Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/xs/XSModelGroupDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedModelGroupDefinitionComponents(Lmf/org/apache/xerces/xs/XSModelGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_1

    :pswitch_2
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeGroupComponents(Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedTypeComponents(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_1

    :goto_0
    :pswitch_4
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/xs/XSElementDeclaration;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedElementComponents(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_1

    :pswitch_5
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedAttributeComponents(Lmf/org/apache/xerces/xs/XSAttributeDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private expandRelatedElementComponents(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getSubstitutionGroupAffiliation()Lmf/org/apache/xerces/xs/XSElementDeclaration;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedElement(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    return-void
.end method

.method private expandRelatedModelGroupComponents(Lmf/org/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSModelGroup;->getParticles()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/XSParticle;

    invoke-direct {p0, v2, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedParticleComponents(Lmf/org/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private expandRelatedModelGroupDefinitionComponents(Lmf/org/apache/xerces/xs/XSModelGroupDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSModelGroupDefinition;->getModelGroup()Lmf/org/apache/xerces/xs/XSModelGroup;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedModelGroupComponents(Lmf/org/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method private expandRelatedParticleComponents(Lmf/org/apache/xerces/xs/XSParticle;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSParticle;->getTerm()Lmf/org/apache/xerces/xs/XSTerm;

    move-result-object p1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTerm;->getType()S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lmf/org/apache/xerces/xs/XSModelGroup;

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedModelGroupComponents(Lmf/org/apache/xerces/xs/XSModelGroup;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_1
    check-cast p1, Lmf/org/apache/xerces/xs/XSElementDeclaration;

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedElement(Lmf/org/apache/xerces/xs/XSElementDeclaration;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :goto_0
    return-void
.end method

.method private expandRelatedSimpleTypeComponents(Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getPrimitiveType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object p1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObjectList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObjectList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-direct {p0, v1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addRelatedType(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private expandRelatedTypeComponents(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1

    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedComplexTypeComponents(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_1

    check-cast p1, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandRelatedSimpleTypeComponents(Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;Ljava/util/Vector;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private findDependentNamespaces(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private findQName(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;
    .locals 4

    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v2, v1, :cond_2

    if-nez v0, :cond_2

    iget-boolean v1, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v1, :cond_2

    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findXSDocumentForDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .locals 0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    return-object p3
.end method

.method private getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    return-object p1
.end method

.method private getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object p1
.end method

.method private getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object p1
.end method

.method private getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object p1
.end method

.method private getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    return-object p1
.end method

.method private getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object p1
.end method

.method private getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object p1
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 10

    invoke-virtual {p2}, Lmf/org/apache/xerces/util/DOMInputSource;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v1, :cond_0

    check-cast v0, Lmf/org/w3c/dom/Document;

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v4, v3, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    move-object v0, v2

    :goto_0
    const/4 v5, 0x0

    if-eqz v0, :cond_8

    const/4 v6, 0x3

    if-eq p4, v6, :cond_6

    :try_start_0
    invoke-virtual {p2}, Lmf/org/apache/xerces/util/DOMInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lmf/org/apache/xerces/util/DOMInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    if-ne v4, v1, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-nez v4, :cond_5

    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v1, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v5

    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    invoke-direct {v2, v6, p4, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/w3c/dom/Element;

    if-eqz p1, :cond_7

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    return-object p1

    :cond_6
    move-object v6, v2

    :cond_7
    invoke-direct {p0, v2, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v2, p1

    move-object v9, v2

    move v6, v3

    goto :goto_3

    :cond_8
    move-object v9, v2

    move v6, v5

    :goto_3
    move-object v4, p0

    move v5, p3

    move-object v7, p2

    move-object v8, p5

    invoke-direct/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 9

    invoke-virtual {p2}, Lmf/org/apache/xerces/util/SAXInputSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p2}, Lmf/org/apache/xerces/util/SAXInputSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    :try_start_0
    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v5

    if-eqz v5, :cond_7

    :cond_0
    const/4 v5, 0x3

    if-eq p4, v5, :cond_1

    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lmf/org/apache/xerces/util/SAXInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    invoke-direct {v6, v5, p4, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/w3c/dom/Element;

    if-eqz p1, :cond_2

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    return-object p1

    :cond_1
    move-object v5, v4

    move-object v6, v5

    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    const-string p1, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    :catch_0
    move p1, v2

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v0, p1

    goto :goto_0

    :catch_1
    :try_start_3
    new-instance p1, Lmf/org/apache/xerces/parsers/SAXParser;

    invoke-direct {p1}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>()V
    :try_end_3
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v0, p1

    :goto_0
    :try_start_4
    const-string p1, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {v0, p1, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xml/sax/SAXParseException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    instance-of p1, v0, Lmf/org/apache/xerces/parsers/SAXParser;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string p4, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p4, "http://apache.org/xml/properties/security-manager"

    invoke-interface {v0, p4, p1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXParseException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_4
    move p1, v3

    goto :goto_1

    :catch_2
    move p1, v3

    goto :goto_1

    :catch_3
    move p1, v2

    :goto_1
    :try_start_6
    const-string p4, "http://xml.org/sax/features/string-interning"

    invoke-interface {v0, p4}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v2
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xml/sax/SAXParseException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_4
    :try_start_7
    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    if-nez p4, :cond_5

    new-instance p4, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    invoke-direct {p4}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;-><init>()V

    iput-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    :cond_5
    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {p4, v7, v8, p1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->reset(Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;Lmf/org/apache/xerces/util/SymbolTable;ZZ)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getSAXErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXParseException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :try_start_8
    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_5
    :try_start_9
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSContentHandler:Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/traversers/SchemaContentHandler;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    :cond_6
    invoke-direct {p0, v6, v5, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1
    :try_end_9
    .catch Lorg/xml/sax/SAXParseException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    return-object p1

    :catch_6
    move-exception p1

    move-object v4, p1

    move v2, v3

    move-object v5, v4

    goto :goto_2

    :catch_7
    move-exception p1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;->createXNIException0(Lorg/xml/sax/SAXException;)Lmf/org/apache/xerces/xni/XNIException;

    move-result-object p1

    throw p1

    :catch_8
    move-exception p1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$SAX2XNIUtil;->createXMLParseException0(Lorg/xml/sax/SAXParseException;)Lmf/org/apache/xerces/xni/parser/XMLParseException;

    move-result-object p1

    throw p1

    :cond_7
    move-object v5, v4

    :goto_2
    move-object v0, p0

    move v1, p3

    move-object v3, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 9

    :try_start_0
    invoke-virtual {p2}, Lmf/org/apache/xerces/util/StAXInputSource;->shouldConsumeRemainingContent()Z

    move-result v0

    invoke-virtual {p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getXMLStreamReader()Lmf/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-virtual {p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getXMLEventReader()Lmf/javax/xml/stream/XMLEventReader;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq p4, v3, :cond_4

    invoke-virtual {p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lmf/org/apache/xerces/util/StAXInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lmf/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_2

    move v6, v5

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v6

    invoke-interface {v6}, Lmf/javax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v0

    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    new-instance v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    invoke-direct {v6, v3, p4, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/w3c/dom/Element;

    if-eqz p1, :cond_5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    return-object p1

    :cond_3
    move-object v6, v4

    goto :goto_1

    :cond_4
    move-object v3, v4

    move-object v6, v3

    :cond_5
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    if-nez p1, :cond_6

    new-instance p1, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    :cond_6
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {p1, p4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->reset(Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;Lmf/org/apache/xerces/util/SymbolTable;)V

    if-eqz v1, :cond_8

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->parse(Lmf/javax/xml/stream/XMLStreamReader;)V

    if-eqz v0, :cond_a

    :goto_2
    invoke-interface {v1}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v1}, Lmf/javax/xml/stream/XMLStreamReader;->next()I

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->parse(Lmf/javax/xml/stream/XMLEventReader;)V

    if-eqz v0, :cond_a

    :goto_3
    invoke-interface {v2}, Lmf/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {v2}, Lmf/javax/xml/stream/XMLEventReader;->nextEvent()Lmf/javax/xml/stream/events/XMLEvent;

    goto :goto_3

    :cond_a
    :goto_4
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fStAXSchemaParser:Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    :cond_b
    invoke-direct {p0, v6, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_5

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lmf/javax/xml/stream/XMLStreamException;->getNestedException()Ljava/lang/Throwable;

    move-result-object p4

    instance-of v0, p4, Ljava/io/IOException;

    if-eqz v0, :cond_c

    move-object p1, p4

    check-cast p1, Ljava/io/IOException;

    move-object v5, p1

    :goto_5
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p3

    move-object v3, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance p2, Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-direct {p2}, Lmf/org/apache/xerces/util/StAXLocationWrapper;-><init>()V

    invoke-virtual {p1}, Lmf/javax/xml/stream/XMLStreamException;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    new-instance p3, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    invoke-virtual {p1}, Lmf/javax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p4, p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p3
.end method

.method private getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_0
    const/4 v3, 0x3

    if-eq p4, v3, :cond_1

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    invoke-direct {v3, v0, p4, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/w3c/dom/Element;

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    return-object p1

    :cond_1
    move-object v0, v2

    move-object v3, v0

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    :cond_3
    invoke-direct {p0, v3, v0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v2, p1

    move v5, v1

    move-object v8, v2

    goto :goto_0

    :cond_4
    move v5, v0

    move-object v8, v2

    :goto_0
    move-object v3, p0

    move v4, p3

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method private getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;
    .locals 6

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandGrammars([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/util/Vector;

    move-result-object p1

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->existingGrammars(Ljava/util/Vector;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGrammars(Ljava/util/Vector;)V

    if-ne v1, v3, :cond_3

    aget-object p1, v0, v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->getComponents()[Lmf/org/apache/xerces/xs/XSObject;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandComponents([Lmf/org/apache/xerces/xs/XSObject;Ljava/util/Hashtable;)Ljava/util/Vector;

    move-result-object v4

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-nez v5, :cond_2

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->canAddComponents(Ljava/util/Vector;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-direct {p0, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalComponents(Ljava/util/Vector;Ljava/util/Hashtable;)V

    if-ne v1, v3, :cond_3

    aget-object p1, p1, v2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSchemaDocument0(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;Ljava/lang/String;Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    return-object p3
.end method

.method private getSchemaDocument1(ZZLmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/w3c/dom/Element;Ljava/io/IOException;)Lmf/org/w3c/dom/Element;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    const-string p1, "schema_reference.4"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    const-string p1, "schema_reference.4"

    new-array p2, v0, [Ljava/lang/Object;

    if-nez p3, :cond_1

    const-string p3, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p3

    :goto_0
    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "schema_reference.4"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    const/4 p1, 0x0

    return-object p1
.end method

.method private getSchemaGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object p1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1, p1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createGrammarFrom(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private isExistingGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Z
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v2
.end method

.method private final needReportTNSError(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fReportedTNS:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private nonAnnotationContent(Lmf/org/w3c/dom/Element;)Z
    .locals 2

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto :goto_0
.end method

.method private null2EmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private removeParticle(Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-ne v2, p2, :cond_2

    :goto_1
    iget p2, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    sub-int/2addr p2, v3

    if-lt v1, p2, :cond_1

    iget p2, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    sub-int/2addr p2, v3

    iput p2, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    return v3

    :cond_1
    iget-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    add-int/lit8 v2, v1, 0x1

    aget-object v0, v0, v2

    aput-object v0, p2, v1

    move v1, v2

    goto :goto_1

    :cond_2
    iget-short v4, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->removeParticle(Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move-object/from16 v9, p5

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_8

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "src-redefine.5.a.a"

    invoke-virtual {p0, v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_0
    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string v0, "src-redefine.5.a.a"

    invoke-virtual {p0, v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_2
    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, "src-redefine.5.a.b"

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v10

    invoke-virtual {p0, v0, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_3
    iget-object v4, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v4, v1, v10, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v4

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v5, v4, v5

    check-cast v5, Lmf/org/apache/xerces/xni/QName;

    if-eqz v5, :cond_6

    iget-object v12, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v13, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-ne v12, v13, :cond_6

    iget-object v12, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, v5, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v5, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v5, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    invoke-interface {v1, v0, v9}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_0
    const-string v1, "src-redefine.5.a.c"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v10

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v5, :cond_7

    const-string v5, ""

    goto :goto_1

    :cond_7
    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-virtual {p0, v1, v3, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_2
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v4, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_7

    :cond_8
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v0, "src-redefine.5.b.a"

    invoke-virtual {p0, v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_9
    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    :cond_a
    if-nez v1, :cond_b

    const-string v0, "src-redefine.5.b.a"

    invoke-virtual {p0, v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_b
    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v0, "src-redefine.5.b.b"

    invoke-virtual {p0, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_c
    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    :cond_d
    if-nez v2, :cond_e

    const-string v0, "src-redefine.5.b.b"

    invoke-virtual {p0, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_e
    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v0, "src-redefine.5.b.c"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {p0, v0, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_f
    iget-object v4, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v4, v2, v10, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v4

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v4, v4, v5

    check-cast v4, Lmf/org/apache/xerces/xni/QName;

    if-eqz v4, :cond_12

    iget-object v5, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-ne v5, v8, :cond_12

    iget-object v5, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_3

    :cond_10
    iget-object v0, v4, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, v4, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, v4, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_11
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    invoke-interface {v2, v0, v9}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_12
    :goto_3
    const-string v4, "src-redefine.5.b.d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v5, :cond_13

    const-string v5, ""

    goto :goto_4

    :cond_13
    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    :goto_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-virtual {p0, v4, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_14
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I

    move-result v0

    if-le v0, v11, :cond_16

    const-string v1, "src-redefine.7.1"

    new-array v2, v11, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v10

    invoke-virtual {p0, v1, v2, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_7

    :cond_16
    if-eq v0, v11, :cond_1d

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_17

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_17
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_18
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->changeRedefineGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)I

    move-result v0

    if-le v0, v11, :cond_1a

    const-string v1, "src-redefine.6.1.1"

    new-array v2, v11, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v10

    invoke-virtual {p0, v1, v2, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_7

    :cond_1a
    if-eq v0, v11, :cond_1d

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_1b

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_1b
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_1c
    const-string v0, "Internal-Error"

    new-array v1, v11, [Ljava/lang/Object;

    const-string v2, "could not handle this particular <redefine>; please submit your schemas and instance document in a bug report!"

    aput-object v2, v1, v10

    invoke-virtual {p0, v0, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_1d
    :goto_7
    return-void
.end method

.method private reportSharingError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "sch-props-correct.2"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-void
.end method

.method private resolveSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/w3c/dom/Element;
    .locals 9

    if-eqz p4, :cond_0

    :try_start_0
    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    goto :goto_0

    :cond_0
    sget-object p4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->EMPTY_TABLE:Ljava/util/Hashtable;

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {p1, p4, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p4

    goto :goto_2

    :catch_0
    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, "schema_reference.4"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, p4, v0

    invoke-virtual {p0, v1, p4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_1
    const-string v1, "schema_reference.4"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, p4, v0

    invoke-virtual {p0, v1, p4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_1
    const/4 p4, 0x0

    move-object v2, p4

    :goto_2
    nop

    instance-of p4, v2, Lmf/org/apache/xerces/util/DOMInputSource;

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lmf/org/apache/xerces/util/DOMInputSource;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v7

    move-object v3, p0

    move v6, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of p4, v2, Lmf/org/apache/xerces/util/SAXInputSource;

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lmf/org/apache/xerces/util/SAXInputSource;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v7

    move-object v3, p0

    move v6, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of p4, v2, Lmf/org/apache/xerces/util/StAXInputSource;

    if-eqz p4, :cond_4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lmf/org/apache/xerces/util/StAXInputSource;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v7

    move-object v3, p0

    move v6, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of p4, v2, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz p4, :cond_5

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    invoke-direct {p0, v2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method private resolveSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 7

    instance-of v0, p1, Lmf/org/apache/xerces/util/DOMInputSource;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/util/DOMInputSource;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v5

    move-object v1, p0

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lmf/org/apache/xerces/util/SAXInputSource;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/util/SAXInputSource;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v5

    move-object v1, p0

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/util/StAXInputSource;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/util/StAXInputSource;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v5

    move-object v1, p0

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v0, :cond_3

    check-cast p1, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method private resolveSchemaSource(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 1

    if-eqz p4, :cond_0

    :try_start_0
    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    goto :goto_0

    :cond_0
    sget-object p4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->EMPTY_TABLE:Ljava/util/Hashtable;

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {p1, p4, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string p2, "schema_reference.4"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    aput-object p1, p4, v0

    invoke-virtual {p0, p2, p4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_1
    const-string p2, "schema_reference.4"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    aput-object p1, p4, v0

    invoke-virtual {p0, p2, p4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_1
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method private setSchemasVisible(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V
    .locals 2

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/DOMUtil;->setVisible(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setSchemasVisible(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateImportDependencies(Ljava/util/Hashtable;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->expandImportList(Ljava/lang/String;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method private updateImportList(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-direct {p0, p2, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->containedImportedGrammar(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateImportList(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->containedImportedGrammar(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateImportListFor(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1, v0, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateImportListWith(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    if-eq v3, p1, :cond_3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_3

    move v4, v1

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v5, p1, :cond_3

    invoke-virtual {v3, v4, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private validateAnnotations(Ljava/util/ArrayList;)V
    .locals 6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createAnnotationValidator()V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucketAdapter:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->refreshGrammars(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setSystemId(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    :goto_1
    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/io/StringReader;

    iget-object v5, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->fAnnotation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->next:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    goto :goto_1
.end method


# virtual methods
.method addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected buildGlobalNameRegistries()V
    .locals 16

    move-object/from16 v7, p0

    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    invoke-virtual {v8, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget-object v10, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v10, v0}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    const/4 v11, 0x1

    move-object v12, v0

    move v13, v11

    :goto_1
    const/4 v14, 0x0

    if-nez v12, :cond_3

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v10, v0}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v14, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v11

    goto/16 :goto_c

    :cond_4
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_a

    :cond_5
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez v13, :cond_6

    const-string v0, "s4s-elt-invalid-content.3"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-virtual {v7, v0, v1, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_6
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    move-object v14, v0

    :goto_3
    if-nez v14, :cond_7

    move v1, v11

    goto/16 :goto_c

    :cond_7
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v14, v0}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_4
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v2, 0x2

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v5, v14

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v14, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_fn3dktizrknc9pi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x4

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v5, v14

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v14, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_fn3dktizrknc9pi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v2, 0x7

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v5, v14

    move-object v11, v6

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v14, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_fn3dktizrknc9pi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->renameRedefiningComponents(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_6
    invoke-static {v14}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v14

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_f
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v12, v0}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_9

    :cond_10
    iget-object v1, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_7

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_7
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v5, v12

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_9

    :cond_12
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v5, v12

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_9

    :cond_13
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_8

    :cond_14
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x3

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v5, v12

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_9

    :cond_15
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x4

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v5, v12

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_9

    :cond_16
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v2, 0x6

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v5, v12

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_9

    :cond_17
    :goto_8
    const/4 v2, 0x7

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object v5, v12

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    :cond_18
    :goto_9
    move v13, v14

    const/4 v1, 0x1

    goto :goto_c

    :cond_19
    :goto_a
    if-nez v13, :cond_1a

    const-string v0, "s4s-elt-invalid-content.3"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-virtual {v7, v0, v2, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_b

    :cond_1a
    const/4 v1, 0x1

    :goto_b
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v12, v0}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    :goto_c
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    move v11, v1

    goto/16 :goto_1
.end method

.method checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p6

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILmf/org/w3c/dom/Element;)V

    :cond_0
    invoke-virtual {v3, p1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, p1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1
    check-cast v0, Lmf/org/w3c/dom/Element;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    if-ne v0, v5, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v6, :cond_3

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move v2, v12

    goto :goto_0

    :cond_3
    invoke-static/range {p5 .. p5}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    move v2, v11

    goto :goto_0

    :cond_4
    move-object v0, v2

    move v2, v12

    :goto_0
    if-eqz v0, :cond_b

    if-ne v1, v10, :cond_5

    const-string v0, "sch-props-correct.2"

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v8, v1, v11

    invoke-virtual {p0, v0, v1, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-void

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v12

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_fn3dktizrknc9pi"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v10, :cond_8

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v10, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v10, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, v10, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v10, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    :cond_8
    if-eqz v2, :cond_a

    iget-object v0, v10, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v10, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_2

    :cond_a
    const-string v0, "sch-props-correct.2"

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v8, v1, v11

    invoke-virtual {p0, v0, v1, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_2

    :cond_b
    iget-boolean v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v0, :cond_c

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    aget-object v0, v0, v9

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_d

    :cond_c
    const-string v0, "sch-props-correct.2"

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v8, v1, v11

    invoke-virtual {p0, v0, v1, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_d
    :goto_2
    iget-boolean v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v0, :cond_e

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    aget-object v0, v0, v9

    invoke-virtual {v0, p1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method checkForDuplicateNames(Ljava/lang/String;ILmf/org/w3c/dom/Element;)V
    .locals 4

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->emptyString2Null(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, p2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "sch-props-correct.2"

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method protected constructTrees(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    new-instance v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v14, v1, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;-><init>(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;Lmf/org/apache/xerces/util/SymbolTable;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "EmptyTargetNamespace"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object p2, v9, v6

    invoke-virtual {v0, v8, v9, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iput-object v3, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    :cond_1
    const/4 v15, 0x3

    const/4 v13, 0x2

    if-eqz v4, :cond_5

    if-eqz v5, :cond_3

    if-ne v5, v7, :cond_2

    goto :goto_0

    :cond_2
    if-eq v5, v15, :cond_7

    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eq v4, v8, :cond_7

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v2, v2, v5

    aget-object v2, v2, v6

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v4, v5, v6

    iget-object v4, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v4, v5, v7

    invoke-virtual {v0, v2, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v3

    :cond_3
    :goto_0
    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v8, :cond_4

    iput-object v4, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-boolean v7, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    goto :goto_1

    :cond_4
    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eq v4, v8, :cond_7

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v2, v2, v5

    aget-object v2, v2, v6

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v4, v5, v6

    iget-object v4, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v4, v5, v7

    invoke-virtual {v0, v2, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v3

    :cond_5
    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz v8, :cond_7

    if-ne v5, v15, :cond_6

    iget-object v4, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    iget-object v4, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    goto :goto_1

    :cond_6
    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->NS_ERROR_CODES:[[Ljava/lang/String;

    aget-object v2, v2, v5

    aget-object v2, v2, v7

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v4, v5, v6

    iget-object v4, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v4, v5, v7

    invoke-virtual {v0, v2, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v3

    :cond_7
    :goto_1
    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v14, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAllowedNS(Ljava/lang/String;)V

    if-eqz p4, :cond_9

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v5, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->isImmutable()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-direct {v5, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-direct {v0, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListWith(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    move-object v2, v5

    :cond_8
    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->updateImportListFor(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_d

    if-ne v5, v7, :cond_a

    goto :goto_2

    :cond_a
    iget-boolean v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-eqz v8, :cond_c

    if-ne v5, v13, :cond_c

    invoke-virtual {v0, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    if-nez v5, :cond_b

    new-instance v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v2

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v5, v8, v2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    move-object v2, v5

    goto :goto_3

    :cond_b
    move-object v2, v5

    goto :goto_3

    :cond_c
    new-instance v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v2

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v5, v8, v2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    move-object v2, v5

    goto :goto_3

    :cond_d
    :goto_2
    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v5, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    :goto_3
    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v5, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    invoke-virtual {v5, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    move-object/from16 v16, v3

    move-object v12, v8

    :goto_4
    if-nez v12, :cond_e

    goto/16 :goto_d

    :cond_e
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    move-object v1, v12

    move v7, v13

    goto/16 :goto_a

    :cond_f
    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v8, v12, v7, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    sget v8, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    aget-object v8, v10, v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    sget v8, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    aget-object v8, v10, v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_10

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v8}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_5

    :cond_10
    move-object v3, v8

    :goto_5
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v6, v8, v10, v7, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    move/from16 v18, v7

    const/16 v17, 0x0

    goto :goto_6

    :cond_11
    const-string v6, "s4s-elt-must-match.1"

    new-array v7, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v11, v7, v17

    const-string v19, "annotation?"

    const/16 v18, 0x1

    aput-object v19, v7, v18

    const/16 v19, 0x2

    aput-object v13, v7, v19

    invoke-virtual {v0, v6, v7, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_6
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_12

    const-string v6, "s4s-elt-must-match.1"

    new-array v7, v15, [Ljava/lang/Object;

    aput-object v11, v7, v17

    const-string v13, "annotation?"

    aput-object v13, v7, v18

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x2

    aput-object v8, v7, v13

    invoke-virtual {v0, v6, v7, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v15, v9

    move-object/from16 p2, v10

    move-object v6, v11

    move-object v1, v12

    move v7, v13

    goto :goto_7

    :cond_12
    move-object v15, v9

    move-object/from16 p2, v10

    move-object v6, v11

    move-object v1, v12

    const/4 v7, 0x2

    goto :goto_7

    :cond_13
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v7, 0x1

    move-object v15, v9

    move-object v9, v12

    move-object/from16 p2, v10

    move-object v10, v6

    move-object v6, v11

    move-object/from16 v11, p2

    move-object v1, v12

    move v12, v7

    move v7, v13

    move-object v13, v14

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v8

    invoke-virtual {v2, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_7

    :cond_14
    move-object v15, v9

    move-object/from16 p2, v10

    move-object v6, v11

    move-object v1, v12

    move v7, v13

    :goto_7
    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v9, p2

    invoke-virtual {v8, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-ne v3, v8, :cond_16

    if-eqz v3, :cond_15

    const-string v6, "src-import.1.1"

    goto :goto_8

    :cond_15
    const-string v6, "src-import.1.2"

    :goto_8
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v9, v8

    invoke-virtual {v0, v6, v9, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_a

    :cond_16
    invoke-virtual {v14, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->isAllowedNS(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-boolean v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-nez v8, :cond_18

    iget-boolean v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-nez v8, :cond_18

    goto/16 :goto_a

    :cond_17
    invoke-virtual {v14, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->addAllowedNS(Ljava/lang/String;)V

    :cond_18
    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v0, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Vector;

    if-nez v9, :cond_19

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    invoke-virtual {v10, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9

    :cond_19
    invoke-virtual {v9, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {v9, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1a
    :goto_9
    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v8, v7}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setContextType(S)V

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v8, v15}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v15, v10, v9

    invoke-virtual {v8, v10}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLocationHints([Ljava/lang/String;)V

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v8, v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-boolean v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    invoke-virtual {v0, v3, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-boolean v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v8, :cond_1c

    :try_start_1
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v8

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v15, v9, v10}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_1b

    goto :goto_a

    :cond_1b
    const/4 v8, 0x1

    goto :goto_b

    :cond_1c
    iget-boolean v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-eqz v8, :cond_1d

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->isExistingGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Z

    move-result v8

    if-eqz v8, :cond_1e

    :cond_1d
    :goto_a
    const/16 v19, 0x3

    goto/16 :goto_16

    :catch_0
    :cond_1e
    const/4 v8, 0x0

    :goto_b
    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_c

    :cond_1f
    const/4 v3, 0x0

    :goto_c
    const/4 v10, 0x0

    invoke-direct {v0, v9, v10, v1, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/w3c/dom/Element;

    move-result-object v16

    move-object/from16 v3, v16

    const/16 v19, 0x3

    goto/16 :goto_14

    :cond_20
    move-object v6, v11

    move-object v1, v12

    move v7, v13

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_e

    :cond_21
    :goto_d
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v14, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v14

    :cond_22
    :goto_e
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v8, 0x1

    invoke-virtual {v3, v1, v8, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    sget v8, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    aget-object v8, v3, v8

    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    new-instance v9, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v10, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v9, v10}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    invoke-virtual {v8, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    if-eqz v8, :cond_26

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v3, v10, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v9

    invoke-virtual {v2, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    const/4 v13, 0x3

    const/16 v17, 0x0

    goto :goto_f

    :cond_24
    const/4 v10, 0x1

    const-string v11, "s4s-elt-must-match.1"

    const/4 v13, 0x3

    new-array v12, v13, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v6, v12, v17

    const-string v18, "annotation?"

    aput-object v18, v12, v10

    aput-object v9, v12, v7

    invoke-virtual {v0, v11, v12, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_f
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v9

    if-eqz v9, :cond_25

    const-string v9, "s4s-elt-must-match.1"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v6, v11, v17

    const-string v12, "annotation?"

    aput-object v12, v11, v10

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v7

    invoke-virtual {v0, v9, v11, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move/from16 v19, v13

    goto :goto_11

    :cond_25
    move/from16 v19, v13

    goto :goto_11

    :cond_26
    const/4 v13, 0x3

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_27

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v12, 0x1

    move-object v9, v1

    move-object v11, v3

    move/from16 v19, v13

    move-object v13, v14

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v8

    invoke-virtual {v2, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_11

    :cond_27
    move/from16 v19, v13

    goto :goto_11

    :cond_28
    const/16 v19, 0x3

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    move-object v13, v8

    :goto_10
    if-nez v13, :cond_32

    :goto_11
    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v8, v3, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    if-nez v15, :cond_29

    const-string v3, "s4s-att-must-appear"

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "<include> or <redefine>"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "schemaLocation"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v0, v3, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_29
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->nonAnnotationContent(Lmf/org/w3c/dom/Element;)Z

    move-result v3

    move v8, v3

    const/4 v3, 0x1

    goto :goto_12

    :cond_2a
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_12
    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v9, v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setContextType(S)V

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v15, v11, v12

    invoke-virtual {v9, v11}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLocationHints([Ljava/lang/String;)V

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v9, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0, v9, v8, v1, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveSchemaSource(Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;Z)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v9

    iget-boolean v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v10, :cond_2b

    if-nez v3, :cond_2b

    :try_start_2
    invoke-virtual {v9}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v10

    invoke-interface {v10, v3}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_13

    :catch_1
    :cond_2b
    const/4 v3, 0x0

    :goto_13
    if-nez v3, :cond_2c

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0, v9, v3, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;ZLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v16

    iget-object v3, v14, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v3, v16

    const/4 v8, 0x0

    goto :goto_14

    :cond_2c
    const/4 v3, 0x1

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    move-object/from16 v3, v16

    const/4 v8, 0x0

    :goto_14
    iget-boolean v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    if-eqz v9, :cond_2e

    if-nez v3, :cond_2d

    const/4 v8, 0x0

    goto :goto_15

    :cond_2d
    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    goto :goto_15

    :cond_2e
    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0, v3, v15, v9, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->constructTrees(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-result-object v8

    :goto_15
    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    if-eqz v8, :cond_2f

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    invoke-virtual {v6, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    if-eqz v3, :cond_31

    if-eqz v8, :cond_30

    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_30
    const/16 v16, 0x0

    goto :goto_16

    :cond_31
    move-object/from16 v16, v3

    :goto_16
    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    move v13, v7

    move/from16 v15, v19

    move-object/from16 v1, p1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_32
    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v9, 0x1

    invoke-virtual {v8, v13, v3, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v8

    invoke-virtual {v2, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v13, v8}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    move-object/from16 v20, v13

    goto :goto_17

    :cond_33
    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_34

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v12, 0x1

    move-object v9, v1

    move-object v11, v3

    move-object/from16 v20, v13

    move-object v13, v14

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v8

    invoke-virtual {v2, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_17

    :cond_34
    move-object/from16 v20, v13

    :goto_17
    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v13

    goto/16 :goto_10

    :catch_2
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->ELE_ERROR_CODES:[Ljava/lang/String;

    aget-object v1, v1, v5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 2

    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>()V

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-eqz v1, :cond_1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getLineNumber()I

    move-result v4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getColumnNumber()I

    move-result v5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getCharacterOffset()I

    move-result v6

    move-object v1, p2

    move-object v2, v3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->setValues(Ljava/lang/String;Ljava/lang/String;III)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method fillInLocalElemInfo(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    array-length v1, v0

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v2, 0xa

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [Lmf/org/w3c/dom/Element;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [Lmf/org/apache/xerces/xs/XSObject;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [[Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    aput-object p5, v0, v1

    iget-object p5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    aput-object p1, p5, v1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aput-object p2, p1, v1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    aput p3, p1, v1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    aput-object p4, p1, v1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    add-int/lit8 p3, v1, 0x1

    iput p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getEffectiveLocalContext()[Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    return-void
.end method

.method protected findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "GrammarConflict"

    invoke-virtual {p0, p1, v1, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method protected getGlobalDecl(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const/4 v6, 0x7

    if-eqz v5, :cond_0

    iget-object v5, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v5, v7, :cond_0

    if-ne v2, v6, :cond_0

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v7, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    if-eqz v5, :cond_0

    return-object v5

    :cond_0
    iget-object v5, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->isAllowedNS(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v5, :cond_2

    iget-object v5, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->needReportTNSError(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, "src-resolve.4.1"

    goto :goto_0

    :cond_1
    const-string v5, "src-resolve.4.2"

    :goto_0
    new-array v11, v7, [Ljava/lang/Object;

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v13, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v11, v10

    iget-object v12, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v12, v11, v9

    iget-object v12, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-virtual {v0, v5, v11, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_2
    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v11, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v11}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    const/4 v11, 0x0

    if-nez v5, :cond_4

    iget-object v1, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->needReportTNSError(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "src-resolve"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v5, v10

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

    aget-object v2, v3, v2

    aput-object v2, v5, v9

    invoke-virtual {v0, v1, v5, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_3
    return-object v11

    :cond_4
    iget-object v12, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v5, v2, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    iget-object v14, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    iget-boolean v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v14, :cond_6

    if-eqz v12, :cond_7

    return-object v12

    :cond_6
    invoke-virtual {v0, v13, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_7

    return-object v14

    :cond_7
    packed-switch v2, :pswitch_data_0

    const-string v13, "Internal-Error"

    new-array v14, v9, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v11, "XSDHandler asked to locate component of type "

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "; it does not recognize this type!"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v10

    invoke-virtual {v0, v13, v14, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto/16 :goto_2

    :pswitch_0
    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/w3c/dom/Element;

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v14, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    goto :goto_2

    :pswitch_1
    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/w3c/dom/Element;

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v14, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    goto :goto_2

    :pswitch_2
    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/w3c/dom/Element;

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v14, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    goto :goto_2

    :pswitch_3
    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/w3c/dom/Element;

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v14, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    goto :goto_2

    :pswitch_4
    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/w3c/dom/Element;

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v14, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    goto :goto_2

    :pswitch_5
    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/w3c/dom/Element;

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v14, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    goto :goto_2

    :pswitch_6
    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/w3c/dom/Element;

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v14, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    :goto_2
    if-nez v11, :cond_9

    if-nez v12, :cond_8

    const-string v1, "src-resolve"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v5, v10

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->COMP_TYPE:[Ljava/lang/String;

    aget-object v2, v3, v2

    aput-object v2, v5, v9

    invoke-virtual {v0, v1, v5, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_8
    return-object v12

    :cond_9
    invoke-direct {v0, v1, v11, v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findXSDocumentForDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-result-object v13

    if-nez v13, :cond_c

    if-nez v12, :cond_b

    iget-object v2, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, "src-resolve.4.1"

    goto :goto_3

    :cond_a
    const-string v2, "src-resolve.4.2"

    :goto_3
    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v10

    iget-object v1, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v1, v5, v9

    iget-object v1, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v1, v5, v8

    invoke-virtual {v0, v2, v5, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_b
    return-object v12

    :cond_c
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v11, v1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-nez v12, :cond_e

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->CIRCULAR_CODES:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-ne v2, v6, :cond_d

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v1, "ct-props-correct.3"

    :cond_d
    new-array v2, v9, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v3, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v0, v1, v2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_e
    return-object v12

    :cond_f
    invoke-virtual {v0, v2, v11, v13, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->traverseGlobalDecl(ILmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;)Ljava/lang/Object;
    .locals 0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getGlobalDeclFromGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    return-object p1
.end method

.method getGrpOrAttrGrpRedefinedByRestriction(ILmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    return-object v3

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    if-nez v0, :cond_3

    return-object v3

    :cond_3
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lmf/org/apache/xerces/xni/QName;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v4, :cond_4

    move-object v0, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v5, v6, v7, v8, v0}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, v5, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_7

    const/4 p3, 0x1

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, "src-redefine.6.2.1"

    new-array p3, p3, [Ljava/lang/Object;

    iget-object p2, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object p2, p3, v9

    invoke-virtual {p0, p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_3

    :cond_6
    const-string p1, "src-redefine.7.2.1"

    new-array p3, p3, [Ljava/lang/Object;

    iget-object p2, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object p2, p3, v9

    invoke-virtual {p0, p1, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_3
    return-object v3

    :cond_7
    return-object p3
.end method

.method protected getIDRegistry()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getIDRegistry_sub()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    return-object v0
.end method

.method public parseSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocationPairs:Ljava/util/Hashtable;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->resetNodePool()V

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result p3

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eq p3, v7, :cond_4

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    invoke-direct {p0, p2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->isExistingGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return-object v0

    :catch_0
    :cond_2
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v0

    goto :goto_1

    :cond_3
    move-object v9, v0

    goto :goto_1

    :cond_4
    move-object v1, v6

    move-object v9, v1

    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->prepareForParse()V

    instance-of v0, p1, Lmf/org/apache/xerces/util/DOMInputSource;

    const/4 v10, 0x1

    if-eqz v0, :cond_6

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/util/DOMInputSource;

    if-ne p3, v7, :cond_5

    move v3, v10

    goto :goto_2

    :cond_5
    move v3, v8

    :goto_2
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/DOMInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_6

    :cond_6
    instance-of v0, p1, Lmf/org/apache/xerces/util/SAXInputSource;

    if-eqz v0, :cond_8

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/util/SAXInputSource;

    if-ne p3, v7, :cond_7

    move v3, v10

    goto :goto_3

    :cond_7
    move v3, v8

    :goto_3
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/SAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_6

    :cond_8
    instance-of v0, p1, Lmf/org/apache/xerces/util/StAXInputSource;

    if-eqz v0, :cond_a

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/util/StAXInputSource;

    if-ne p3, v7, :cond_9

    move v3, v10

    goto :goto_4

    :cond_9
    move v3, v8

    :goto_4
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/util/StAXInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_6

    :cond_a
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Lmf/org/apache/xerces/impl/xs/util/XSInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_6

    :cond_b
    if-ne p3, v7, :cond_c

    move v3, v10

    goto :goto_5

    :cond_c
    move v3, v8

    :goto_5
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getSchemaDocument(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZSLmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_e

    instance-of p1, p1, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v9

    :cond_e
    if-ne p3, v7, :cond_12

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setTargetNamespace(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    move-object v1, v6

    :goto_7
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    invoke-virtual {p0, p2, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->findGrammar(Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v9, :cond_11

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    if-eqz v3, :cond_10

    if-eqz v2, :cond_11

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    invoke-interface {v3, v2}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    return-object v9

    :cond_11
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    invoke-direct {v3, v2, p3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;-><init>(Ljava/lang/String;SLjava/lang/String;)V

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {p3, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_12

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {p3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->prepareForTraverse()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-eqz v9, :cond_13

    move p3, v10

    goto :goto_8

    :cond_13
    move p3, v8

    :goto_8
    invoke-virtual {p0, v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->constructTrees(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Z)Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    if-nez p1, :cond_14

    return-object v6

    :cond_14
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->buildGlobalNameRegistries()V

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    if-eqz p1, :cond_15

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->traverseSchemas(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->traverseLocalElements()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->resolveKeyRefs()V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    sub-int/2addr p1, v10

    :goto_9
    if-gez p1, :cond_17

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    if-eqz p1, :cond_16

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_16

    invoke-direct {p0, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->validateAnnotations(Ljava/util/ArrayList;)V

    :cond_16
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    return-object p1

    :cond_17
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    invoke-virtual {p3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Vector;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->emptyString2Null(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p2

    if-nez p2, :cond_18

    goto :goto_b

    :cond_18
    move v0, v8

    move v1, v0

    :goto_a
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_19

    invoke-virtual {p3, v1}, Ljava/util/Vector;->setSize(I)V

    invoke-virtual {p2, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImportedGrammars(Ljava/util/Vector;)V

    :goto_b
    add-int/lit8 p1, p1, -0x1

    goto :goto_9

    :cond_19
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    if-eqz v2, :cond_1a

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p3, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v1, v3

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method prepareForParse()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTraversed:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLastSchemaWasDuplicate:Z

    return-void
.end method

.method prepareForTraverse()V
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedAttributeGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedElementRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedGroupRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedNotationRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedTypeRegistrySub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fXSDocumentInfoRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2XSDocumentMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2XSDMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllTNSs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fImportMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    const/4 v2, 0x0

    move v0, v2

    :goto_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-lt v0, v3, :cond_2

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    move v0, v2

    :goto_2
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    if-lt v0, v3, :cond_1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->createTraversers()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reset(Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUniqueOrKeyTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedAttributeGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefinedRestrictedGroupRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    return-void

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    aput-object v1, v3, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object v1, v3, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    aput-object v1, v3, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v1, v3, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    aput-object v1, v3, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aput-object v1, v3, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedRegistriesExt:[Ljava/util/Hashtable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    return-void
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-object/from16 v2, p3

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    const/4 v7, 0x1

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v9, "http://www.w3.org/TR/xml-schema-1"

    const/4 v12, 0x1

    move-object v10, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V

    return-void
.end method

.method reportSchemaWarning(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;Ljava/lang/Exception;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-object/from16 v2, p3

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->xl:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    const/4 v7, 0x0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v9, "http://www.w3.org/TR/xml-schema-1"

    const/4 v12, 0x0

    move-object v10, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 4

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    if-eqz v0, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    new-instance v3, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v3}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    :goto_0
    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    :goto_1
    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v2, "http://apache.org/xml/properties/locale"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v2, "http://apache.org/xml/properties/locale"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAnnotationValidator:Lmf/org/apache/xerces/parsers/XML11Configuration;

    const-string v2, "http://apache.org/xml/properties/locale"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "http://apache.org/xml/features/validate-annotations"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fValidateAnnotations:Z

    :goto_2
    :try_start_2
    const-string v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHonourAllSchemaLocations:Z

    :goto_3
    :try_start_3
    const-string v1, "http://apache.org/xml/features/namespace-growth"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNamespaceGrowth:Z

    :goto_4
    :try_start_4
    const-string v1, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    :goto_5
    :try_start_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    const-string v2, "http://apache.org/xml/features/allow-java-encodings"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v1, "http://apache.org/xml/features/standard-uri-conformant"

    const-string v2, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    :catch_8
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_6
    :try_start_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    const-string v2, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :cond_5
    return-void
.end method

.method protected resolveKeyRefs()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aget-object v1, v1, v0

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->makeGlobal()V

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->setEffectiveContext([Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    aget-object v3, v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v3, v4}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    aget-object v4, v4, v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDoc2SystemId:Ljava/util/Hashtable;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public setDVFactory(Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    return-void
.end method

.method public setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    return-void
.end method

.method public setGenerateSyntheticAnnotations(Z)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSchemaParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    const-string v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method protected storeKeyRef(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 8

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    const/4 v3, 0x5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistry:Ljava/util/Hashtable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUnparsedIdentityConstraintRegistrySub:Ljava/util/Hashtable;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    array-length v2, v1

    if-ne v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lmf/org/w3c/dom/Element;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefs:[Lmf/org/w3c/dom/Element;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefElems:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object p3, p1, v1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefNamespaceContext:[[Ljava/lang/String;

    iget-object p3, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->getEffectiveLocalContext()[Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefsMapXSDocumentInfo:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fKeyrefStackPos:I

    aput-object p2, p1, p3

    return-void
.end method

.method protected traverseGlobalDecl(ILmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {p2, v0}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    invoke-static {p2}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->backupNSSupport(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-static {p2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    invoke-virtual {p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v2

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    invoke-virtual {p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    :goto_1
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->restoreNSSupport()V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method traverseLocalElements()V
    .locals 10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fDeferTraversingLocalElements:Z

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemStackPos:I

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl:[Lmf/org/w3c/dom/Element;

    aget-object v4, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElementDecl_schema:[Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    aget-object v5, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v2, v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v6

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v3, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAllContext:[I

    aget v7, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v8, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fLocalElemNamespaceContext:[[Ljava/lang/String;

    aget-object v9, v0, v1

    invoke-virtual/range {v2 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;[Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v1

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParent:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v3, v2, v1

    instance-of v3, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v3, :cond_1

    aget-object v2, v2, v1

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSParticle;->getTerm()Lmf/org/apache/xerces/xs/XSTerm;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    goto :goto_1

    :cond_1
    aget-object v0, v2, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fParticle:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    invoke-direct {p0, v0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->removeParticle(Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected traverseSchemas(Ljava/util/ArrayList;)V
    .locals 14

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setSchemasVisible(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRoot:Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;

    iget-object v8, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, v2}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    const/4 v10, 0x0

    move v3, v10

    :goto_1
    if-nez v2, :cond_5

    if-nez v3, :cond_2

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->getSchemaAttrs()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    move-object v3, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->getAnnotations()Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->doc2SystemId(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->returnSchemaAttrs()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v8, v2}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDependencyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Vector;

    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v10, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v4}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_b

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fRedefine2NSSupport:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->backupNSSupport(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v4}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    :goto_3
    if-nez v4, :cond_6

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->restoreNSSupport()V

    goto/16 :goto_5

    :cond_6
    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v4, v11}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v5, v4, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    goto :goto_4

    :cond_7
    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v5, v4, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    goto :goto_4

    :cond_8
    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v5, v4, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    goto :goto_4

    :cond_9
    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v5, v4, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_4

    :cond_a
    const-string v11, "s4s-elt-must-match.1"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "(annotation | (simpleType | complexType | group | attributeGroup))*"

    aput-object v13, v12, v7

    aput-object v5, v12, v6

    invoke-virtual {p0, v11, v12, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    goto :goto_3

    :cond_b
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto/16 :goto_5

    :cond_c
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fAttributeGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    goto/16 :goto_5

    :cond_d
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    goto :goto_5

    :cond_e
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_5

    :cond_f
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    goto :goto_5

    :cond_10
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fNotationTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    goto :goto_5

    :cond_11
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v4, v2, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_5

    :cond_12
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->getSchemaAttrs()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    invoke-virtual {v9, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    move v3, v7

    goto :goto_5

    :cond_13
    const-string v4, "s4s-elt-invalid-content.1"

    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v2, v4}, Lmf/org/apache/xerces/util/DOMUtil;->getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    goto/16 :goto_1
.end method
