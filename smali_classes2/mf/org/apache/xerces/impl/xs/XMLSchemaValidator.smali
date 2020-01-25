.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;
.implements Lmf/org/apache/xerces/impl/RevalidationHandler;
.implements Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field private static final BUFFER_SIZE:I = 0x14

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field private static final DEBUG:Z = false

.field private static final DEBUG_NORMALIZATION:Z = false

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field private static final EMPTY_TABLE:Ljava/util/Hashtable;

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_CONSTRAINT_NUM:I = 0x1

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field static final INC_STACK_SIZE:I = 0x8

.field static final INITIAL_STACK_SIZE:I = 0x8

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field static final XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;


# instance fields
.field private fAppendBuffer:Z

.field protected fAugPSVI:Z

.field protected final fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

.field private final fBuffer:Ljava/lang/StringBuffer;

.field private final fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

.field private fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field private fCMStateStack:[[I

.field private fCurrCMState:[I

.field private fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field private fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field protected fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

.field private fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field protected fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

.field protected fDoValidation:Z

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field private fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fElementDepth:I

.field private final fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

.field protected fEntityRef:Z

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected final fExpandedLocationPairs:Ljava/util/Hashtable;

.field protected fExternalNoNamespaceSchema:Ljava/lang/String;

.field protected fExternalSchemas:Ljava/lang/String;

.field private fFirstChunk:Z

.field protected fFullChecking:Z

.field private final fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fIDCChecking:Z

.field protected fIdConstraint:Z

.field private fIgnoreXSITypeDepth:I

.field protected fInCDATA:Z

.field protected fJaxpSchemaSource:Ljava/lang/Object;

.field protected final fLocationPairs:Ljava/util/Hashtable;

.field private fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

.field private fNFullValidationDepth:I

.field private fNNoneValidationDepth:I

.field protected fNamespaceGrowth:Z

.field private fNil:Z

.field private fNilStack:[Z

.field protected fNormalizeData:Z

.field private final fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

.field private fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

.field private fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

.field private final fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private fRootElementDeclQName:Ljavax/xml/namespace/QName;

.field private fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fRootTypeQName:Ljavax/xml/namespace/QName;

.field private fSawCharacters:Z

.field private fSawText:Z

.field private fSawTextStack:[Z

.field protected fSchemaDynamicValidation:Z

.field protected fSchemaElementDefault:Z

.field private final fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

.field private fSchemaType:Ljava/lang/String;

.field private fSkipValidationDepth:I

.field private fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private fStrictAssess:Z

.field private fStrictAssessStack:[Z

.field private fStringContent:[Z

.field private fSubElement:Z

.field private fSubElementStack:[Z

.field private final fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempQName:Lmf/org/apache/xerces/xni/QName;

.field private fTrailing:Z

.field private fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fUnionType:Z

.field protected final fUnparsedLocations:Ljava/util/ArrayList;

.field protected fUseGrammarPoolOnly:Z

.field private fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private fValidationRoot:Ljava/lang/String;

.field protected fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

.field protected fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

.field private fWhiteSpace:S

.field protected final fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

.field protected final fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

.field private final nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "http://xml.org/sax/features/validation"

    const-string v1, "http://apache.org/xml/features/validation/schema"

    const-string v2, "http://apache.org/xml/features/validation/dynamic"

    const-string v3, "http://apache.org/xml/features/validation/schema-full-checking"

    const-string v4, "http://apache.org/xml/features/allow-java-encodings"

    const-string v5, "http://apache.org/xml/features/continue-after-fatal-error"

    const-string v6, "http://apache.org/xml/features/standard-uri-conformant"

    const-string v7, "http://apache.org/xml/features/generate-synthetic-annotations"

    const-string v8, "http://apache.org/xml/features/validate-annotations"

    const-string v9, "http://apache.org/xml/features/honour-all-schemaLocations"

    const-string v10, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    const-string v11, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    const-string v12, "http://apache.org/xml/features/validation/id-idref-checking"

    const-string v13, "http://apache.org/xml/features/validation/identity-constraint-checking"

    const-string v14, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    const-string v15, "http://apache.org/xml/features/namespace-growth"

    const-string v16, "http://apache.org/xml/features/internal/tolerate-duplicates"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Boolean;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    const-string v5, "http://apache.org/xml/properties/schema/external-schemaLocation"

    const-string v6, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    const-string v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string v8, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string v9, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    const-string v10, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    const-string v11, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->EMPTY_TABLE:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-direct {v3, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    new-instance v3, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnparsedLocations:Ljava/util/ArrayList;

    new-instance v3, Lmf/org/apache/xerces/xni/XMLString;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v0, v4}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v3, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v3}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    iput-short v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-direct {v3, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v4, "QName"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;-><init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-direct {v3, v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    const/16 v3, 0x8

    new-array v4, v3, [Z

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    new-array v4, v3, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    new-array v4, v3, [Z

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    new-array v4, v3, [Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    new-array v4, v3, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    new-array v4, v3, [Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    new-array v4, v3, [[I

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    new-array v4, v3, [Z

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    new-array v1, v3, [Z

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    new-array v1, v3, [Z

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    new-instance v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    new-instance v1, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    new-instance v1, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-direct {v1, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setExtraChecking(Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setFacetChecking(Z)V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)I
    .locals 0

    iget p0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    return p0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    return-void
.end method

.method private activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getSelector()Lmf/org/apache/xerces/impl/xs/identity/Selector;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-virtual {p1, p0, v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector;->createMatcher(Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    return-void
.end method

.method private expectedStr(Ljava/util/Vector;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-lez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private hasSchemaComponent(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;SLmf/org/apache/xerces/xni/QName;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget-object p3, p3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    :pswitch_1
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getAttributeDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v0

    :pswitch_2
    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getElementDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;

    move-result-object p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private normalizeWhitespace(Ljava/lang/String;Z)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v2, v0, [C

    iput-object v2, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v2, 0x0

    iput v2, v1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iput v2, v1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    move v3, p2

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget p1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget p2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/16 v4, 0x20

    aput-char v4, v3, v5

    move v3, p2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v6, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v4, v3, v6

    move v3, v2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;Z)V
    .locals 11

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v3, v2

    if-ge v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v3, v2

    new-array v3, v3, [C

    iput-object v3, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v2, v1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iput v2, v1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    const/4 v3, 0x0

    move v4, p2

    move v5, v3

    move v6, v5

    :goto_0
    const/16 v7, 0x20

    if-lt v1, v0, :cond_8

    if-eqz v4, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget p1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-le p1, v2, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget p2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    sub-int/2addr p2, v2

    iput p2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    move p1, v2

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget p2, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-le p2, v2, :cond_5

    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez p2, :cond_5

    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v3, p2, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object p2, p2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aput-char v7, p2, v3

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v3, p2, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object p2, p2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aput-char v7, p2, v3

    :cond_5
    :goto_2
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v0, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v1, v1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int/2addr v0, v1

    iput v0, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    if-nez p1, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    :cond_7
    return-void

    :cond_8
    iget-object v8, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v8, v8, v1

    invoke-static {v8}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v9

    if-eqz v9, :cond_a

    if-nez v4, :cond_9

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v9, v8, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v7, v4, v9

    move v4, p2

    :cond_9
    if-nez v5, :cond_b

    move v6, v2

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v7, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v8, v4, v7

    move v5, v2

    move v4, v3

    :cond_b
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1

    array-length v0, p2

    if-nez p3, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array p3, v0, [Ljava/lang/String;

    iput-object p3, p1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/xs/StringList;)V

    :goto_0
    return-void
.end method

.method private setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/xs/StringList;)V
    .locals 6

    array-length p1, p2

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, p1, :cond_2

    if-lez v3, :cond_1

    if-ne v3, p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array p2, v3, [Ljava/lang/String;

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    aget-object v4, p2, v2

    invoke-interface {p3, v4}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    aget-object v5, p2, v2

    aput-object v5, v0, v3

    move v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public activateField(Lmf/org/apache/xerces/impl/xs/identity/Field;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/identity/Field;->createMatcher(Lmf/org/apache/xerces/impl/xs/identity/ValueStore;)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    return-object p1
.end method

.method addDefaultAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 12

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object p3

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p3, v2}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-object v4, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-short v5, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    iget-object v6, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v5

    iget-object v6, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    :cond_1
    iget-object v7, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v8, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-interface {p2, v7, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v9, 0x2

    if-ne v3, v8, :cond_3

    if-nez v7, :cond_3

    const-string v3, "cvc-complex-type.4"

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v10, v1

    iget-object v11, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-virtual {p0, v3, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-nez v7, :cond_6

    if-eqz v5, :cond_6

    new-instance v3, Lmf/org/apache/xerces/xni/QName;

    const/4 v5, 0x0

    iget-object v7, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iget-object v10, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iget-object v11, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v3, v5, v7, v10, v11}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    const-string v5, ""

    :goto_2
    instance-of v7, p2, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    if-eqz v7, :cond_5

    move-object v7, p2

    check-cast v7, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v10

    const-string v11, "CDATA"

    invoke-virtual {v7, v3, v11, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v7, "CDATA"

    invoke-interface {p2, v3, v7, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    :goto_3
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v3, :cond_6

    invoke-interface {p2, v10}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v3

    new-instance v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    invoke-direct {v5}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    const-string v7, "ATTRIBUTE_PSVI"

    invoke-interface {v3, v7, v5}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v3, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v3, v6}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v3, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    iput-short v9, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    iput-short v9, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iput-boolean v8, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fSpecified:Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 6

    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    const/4 v2, 0x2

    if-eqz p2, :cond_2

    iget-short p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    if-eqz p2, :cond_2

    if-ne p2, v2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Ljava/lang/String;Z)V

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v4, v4, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p2, v3, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_2
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result p2

    const/16 v3, 0xf

    if-ne p2, v3, :cond_6

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast p2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short p2, p2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne p2, v2, :cond_6

    move p2, v0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p2, v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_5

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_5

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    move v0, v1

    :goto_5
    return v0
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleCharacters(Lmf/org/apache/xerces/xni/XMLString;)Lmf/org/apache/xerces/xni/XMLString;

    move-result-object p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    :goto_0
    return-void
.end method

.method checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V
    .locals 3

    iget-object v0, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "cvc-elt.1.b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p2, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p2, v1, v2

    const/4 p2, 0x1

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p1, v1, p2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public elementDefault(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method elementLocallyValidComplexType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string p2, "cvc-complex-type.2.1"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v1, v5, :cond_5

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v1, :cond_2

    const-string v1, "cvc-complex-type.2.2"

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {p0, v1, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :try_start_0
    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNormalizationRequired(Z)V

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v1, p2, v6, v7}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p2

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "cvc-complex-type.2.2"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-short p2, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne p2, v3, :cond_6

    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    if-eqz p2, :cond_6

    const-string p2, "cvc-complex-type.2.3"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    iget-short p2, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v1, 0x3

    if-eq p2, v3, :cond_7

    iget-short p2, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne p2, v1, :cond_b

    :cond_7
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aget v0, p2, v4

    if-ltz v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    invoke-interface {v0, p2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->endContentModel([I)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object p2

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v0

    if-eqz v0, :cond_a

    aget v6, v0, v4

    aget v7, v0, v3

    if-ge v7, v6, :cond_9

    sub-int p2, v6, v7

    if-le p2, v5, :cond_8

    const-string v7, "cvc-complex-type.2.4.j"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v8, v4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v5

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v1

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    const-string p2, "cvc-complex-type.2.4.i"

    new-array v7, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v7, v4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v3

    invoke-virtual {p0, p2, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    const-string v0, "cvc-complex-type.2.4.b"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    const-string v0, "cvc-complex-type.2.4.b"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_1
    return-object v2
.end method

.method elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string v0, "cvc-type.3.1.2"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :try_start_0
    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNormalizationRequired(Z)V

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, p2, v4, v5}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "cvc-type.3.1.3"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v4, v2

    aput-object p2, v4, v3

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidComplexType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    :goto_0
    return-object v1
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p2, v1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {p2, p1, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndDocument()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    :goto_1
    return-void
.end method

.method final endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 6

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-le v1, v2, :cond_0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_0

    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    if-le v1, v2, :cond_1

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_0

    :cond_1
    iput-short v5, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne v0, v1, :cond_2

    sub-int/2addr v1, v5

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne v0, v1, :cond_3

    sub-int/2addr v1, v5

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-boolean v5, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_1
    iput-short v4, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->popContext()[Ljava/lang/String;

    :goto_2
    if-eqz p1, :cond_7

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 p2, 0x0

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    :cond_7
    return-object p3
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endValueScope()V

    return-void
.end method

.method ensureStackCapacity()V
    .locals 5

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x8

    new-array v2, v1, [Z

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    new-array v0, v1, [Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    new-array v0, v1, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    new-array v0, v1, [Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    new-array v0, v1, [Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    new-array v0, v1, [Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    new-array v0, v1, [[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    :cond_0
    return-void
.end method

.method findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v4, p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    invoke-virtual {v4, v0, v2, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/xml-schema-1"

    const-string v5, "GrammarConflict"

    invoke-virtual {v0, v4, v5, v1, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-object v0, v1

    :cond_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v1, :cond_9

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    if-eqz v1, :cond_9

    invoke-direct {p0, v0, p1, p4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->hasSchemaComponent(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;SLmf/org/apache/xerces/xni/QName;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-short p1, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object p3, p1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    iput-object p4, p1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    iput-object p5, p1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    if-nez p2, :cond_3

    sget-object p2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->getLocationArray()[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    if-eqz p3, :cond_4

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {p0, p3, p2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_4
    if-eqz v0, :cond_5

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    if-eqz p2, :cond_9

    :cond_5
    if-eqz v0, :cond_6

    sget-object p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->EMPTY_TABLE:Ljava/util/Hashtable;

    :cond_6
    :try_start_0
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p1

    if-eqz v0, :cond_7

    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_7

    :try_start_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object p2

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_7

    move p2, v3

    goto :goto_0

    :catch_0
    :cond_7
    move p2, v2

    :goto_0
    if-eqz p2, :cond_9

    :try_start_2
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {p2, p3, p1, p4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v9, p1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v4, p2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/xml-schema-1"

    const-string v6, "schema_reference.4"

    new-array v7, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_8

    aget-object p1, p1, v3

    goto :goto_1

    :cond_8
    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    aput-object p1, v7, v3

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    :cond_9
    :goto_2
    return-object v0
.end method

.method getAndCheckXsiType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_0
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-interface {v0, v9, v1, v13}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/QName;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    move-object v15, v1

    goto :goto_0

    :cond_0
    move-object v15, v13

    :goto_0
    if-nez v15, :cond_1

    const/4 v2, 0x7

    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v0

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v15

    :cond_1
    if-nez v15, :cond_2

    const-string v0, "cvc-elt.4.2"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v14

    aput-object v9, v1, v12

    invoke-virtual {v7, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v13

    :cond_2
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_3

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    goto :goto_1

    :cond_3
    move v0, v14

    :goto_1
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_4

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    :cond_4
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-static {v15, v1, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cvc-elt.4.3"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v14

    aput-object v9, v1, v12

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual {v7, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object v15

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "cvc-elt.4.1"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v14

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    aput-object v9, v1, v11

    invoke-virtual {v7, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v13
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    :cond_0
    const-string v0, "ELEMENT_PSVI"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->reset()V

    return-object p1
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getGlobalElementDecl(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 6

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getXsiNil(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "cvc-elt.3.1"

    new-array v0, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    :cond_2
    :goto_1
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result p2

    if-ne p2, v3, :cond_3

    const-string p2, "cvc-elt.3.2.2"

    new-array v0, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v1
.end method

.method handleCharacters(Lmf/org/apache/xerces/xni/XMLString;)Lmf/org/apache/xerces/xni/XMLString;
    .locals 6

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v0, :cond_0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-direct {p0, p1, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    :cond_3
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v1, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v0, v3, :cond_7

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_1
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v1, v3

    if-lt v0, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-nez v1, :cond_6

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-object p1
.end method

.method handleEndDocument()V
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endDocument()V

    :cond_0
    return-void
.end method

.method handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 12

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    iget p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne v0, p1, :cond_0

    if-lez v0, :cond_0

    sub-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean p1, p1, v0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object p1, p1, v0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    aget-boolean p1, p1, v0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    aget-object p1, p1, v0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    aget-object p1, p1, v0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget-object p1, p1, v0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    aget-boolean p1, p1, v0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    aget-object p1, p1, v0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    aget-boolean p1, p1, v0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    aget-boolean p1, p1, v0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_0

    :cond_0
    iget p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    :goto_0
    iget p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_1
    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processElementContent(Lmf/org/apache/xerces/xni/QName;)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v0

    sub-int/2addr v0, v2

    move v3, v0

    :goto_1
    if-gez v3, :cond_9

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->popContext()V

    :cond_4
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v4

    move p1, v0

    :goto_2
    const/4 v3, 0x2

    if-ge p1, v4, :cond_7

    :goto_3
    if-ge v0, v4, :cond_5

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endElement()V

    goto/16 :goto_8

    :cond_5
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object p1

    instance-of v5, p1, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-eqz v5, :cond_6

    check-cast p1, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v6

    if-ne v6, v3, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result p1

    invoke-virtual {v6, v5, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocumentFragment()V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v5

    instance-of v6, v5, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-eqz v6, :cond_8

    check-cast v5, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v7

    if-eq v7, v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v5

    invoke-virtual {v3, v6, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->transplant(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v4, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v8, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v9, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v10, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v11, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    goto :goto_7

    :cond_a
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v8

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v4, :cond_b

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object v9, v4

    goto :goto_4

    :cond_b
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object v9, v4

    :goto_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v4, :cond_c

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    move v10, v4

    goto :goto_5

    :cond_c
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    move v10, v4

    :goto_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v4, :cond_d

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    move-object v11, v4

    goto :goto_6

    :cond_d
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    move-object v11, v4

    :goto_6
    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_e
    :goto_8
    iget p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-ge p1, v0, :cond_f

    sub-int/2addr v0, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    :cond_f
    const/4 p1, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v3, 0x0

    if-nez v0, :cond_14

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->resetIDTables()V

    if-eqz p1, :cond_10

    const-string v0, "cvc-id.1"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_11
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_13

    :goto_9
    array-length v0, p1

    if-lt v3, v0, :cond_12

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    goto :goto_a

    :cond_12
    aget-object v0, p1, v3

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImmutable(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    :goto_a
    invoke-virtual {p0, v2, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p1

    goto :goto_b

    :cond_14
    invoke-virtual {p0, v3, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p1

    iget p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    sub-int/2addr p2, v2

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean p2, p2, v0

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aget-object p2, p2, v0

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    aget-boolean p2, p2, v0

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    aget-object p2, p2, v0

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    aget-object p2, p2, v0

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget-object p2, p2, v0

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    aget-boolean p2, p2, v0

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    aget-object p2, p2, v0

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    aget-boolean p2, p2, v0

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    aget-boolean p2, p2, v0

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    :goto_b
    return-object p1
.end method

.method handleIgnorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 0

    iget p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method handleStartDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V
    .locals 0

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startDocument()V

    :cond_0
    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    const/4 p2, 0x0

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    :cond_1
    return-void
.end method

.method handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ne v0, v10, :cond_0

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isGrammarFound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-boolean v11, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    :cond_0
    iget-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->storeLocations(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v0, :cond_3

    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/2addr v0, v11

    iput v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_2

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v9

    :goto_0
    return-object v0

    :cond_3
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    const/4 v12, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-eqz v0, :cond_b

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-interface {v0, v7, v1, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aget v1, v1, v15

    if-ne v1, v10, :cond_c

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v1, :cond_8

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-direct {v6, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v2

    if-eqz v2, :cond_7

    aget v3, v2, v15

    aget v4, v2, v11

    aget v5, v2, v14

    if-ge v5, v3, :cond_5

    sub-int v1, v3, v5

    if-le v1, v11, :cond_4

    const-string v4, "cvc-complex-type.2.4.h"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v13, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v5, v15

    iget-object v13, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v12

    invoke-interface {v13, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v11

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v14

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v12

    invoke-virtual {v6, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "cvc-complex-type.2.4.g"

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v5, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v15

    iget-object v5, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v12

    invoke-interface {v5, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v11

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v14

    invoke-virtual {v6, v1, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    if-lt v5, v4, :cond_6

    if-eq v4, v10, :cond_6

    const-string v2, "cvc-complex-type.2.4.e"

    new-array v3, v12, [Ljava/lang/Object;

    iget-object v5, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v15

    aput-object v1, v3, v11

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v14

    invoke-virtual {v6, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const-string v2, "cvc-complex-type.2.4.a"

    new-array v3, v14, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v15

    aput-object v1, v3, v11

    invoke-virtual {v6, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    const-string v2, "cvc-complex-type.2.4.a"

    new-array v3, v14, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v15

    aput-object v1, v3, v11

    invoke-virtual {v6, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v1

    if-eqz v1, :cond_a

    aget v2, v1, v11

    aget v1, v1, v14

    if-lt v1, v2, :cond_9

    if-eq v2, v10, :cond_9

    const-string v1, "cvc-complex-type.2.4.f"

    new-array v3, v14, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v15

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v11

    invoke-virtual {v6, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    const-string v1, "cvc-complex-type.2.4.d"

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v15

    invoke-virtual {v6, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    const-string v1, "cvc-complex-type.2.4.d"

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v15

    invoke-virtual {v6, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_1
    iget v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eq v1, v10, :cond_d

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->ensureStackCapacity()V

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aput-boolean v11, v1, v2

    iput-boolean v15, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object v3, v1, v2

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget-boolean v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    aput-boolean v3, v1, v2

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    aput-object v3, v1, v2

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    aput-object v3, v1, v2

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget-boolean v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    aput-boolean v3, v1, v2

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aput-object v3, v1, v2

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aput-object v3, v1, v2

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget-boolean v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    aput-boolean v3, v1, v2

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget-boolean v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    aput-boolean v3, v1, v2

    :cond_d
    iget v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/2addr v1, v11

    iput v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v1, 0x0

    iput-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-boolean v11, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iput-boolean v15, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->setLength(I)V

    iput-boolean v15, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iput-boolean v15, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    if-eqz v0, :cond_f

    instance-of v1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v1, :cond_e

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_2

    :cond_e
    move-object v13, v0

    check-cast v13, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    goto :goto_3

    :cond_f
    :goto_2
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_11

    iget-short v0, v13, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v0, v14, :cond_11

    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iget-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_10

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    goto :goto_4

    :cond_10
    move-object v0, v9

    :goto_4
    return-object v0

    :cond_11
    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v0, :cond_15

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_12

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v6, v0, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_5

    :cond_12
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_13

    invoke-virtual {v6, v0, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processRootElementDeclQName(Ljavax/xml/namespace/QName;Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_5

    :cond_13
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_14

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_5

    :cond_14
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_15

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processRootTypeQName(Ljavax/xml/namespace/QName;)V

    :cond_15
    :goto_5
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_17

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_16

    const/4 v1, 0x5

    iget-object v2, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, v7, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    :cond_16
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    :cond_17
    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-ne v0, v1, :cond_18

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_18

    add-int/2addr v1, v11

    iput v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    :cond_18
    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-lt v0, v1, :cond_19

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_19
    const/4 v0, 0x0

    :goto_6
    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v1, :cond_21

    if-nez v0, :cond_21

    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v0, :cond_1f

    iget-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-nez v0, :cond_1b

    iget-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    if-eqz v0, :cond_1a

    goto :goto_7

    :cond_1a
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    const-string v2, "cvc-elt.1.a"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v15

    invoke-virtual {v0, v1, v2, v3, v11}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_9

    :cond_1b
    :goto_7
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_1d

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1c

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_1c
    const/4 v0, -0x2

    iput v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    return-object v9

    :cond_1d
    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iget-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_1e

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    goto :goto_8

    :cond_1e
    move-object v0, v9

    :goto_8
    return-object v0

    :cond_1f
    if-eqz v13, :cond_20

    iget-short v0, v13, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v0, v11, :cond_20

    const-string v0, "cvc-complex-type.2.4.c"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v15

    invoke-virtual {v6, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    :goto_9
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-boolean v15, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iput-boolean v15, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    goto :goto_c

    :cond_21
    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    if-eqz v0, :cond_23

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {v6, v7, v0, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getAndCheckXsiType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_23

    if-nez v1, :cond_22

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_a

    :cond_22
    iput-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    :cond_23
    :goto_a
    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v14, :cond_24

    iput-boolean v11, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto :goto_c

    :cond_24
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_25

    iput-boolean v11, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto :goto_c

    :cond_25
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v0, v11, :cond_26

    move v0, v11

    goto :goto_b

    :cond_26
    move v0, v15

    :goto_b
    iput-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    :goto_c
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getAbstract()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "cvc-elt.2"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v15

    invoke-virtual {v6, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    iget v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v0, :cond_28

    iget-object v0, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    :cond_28
    iget-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v0, :cond_29

    iput-boolean v11, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    iput-boolean v15, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    iput-boolean v15, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    iput-short v10, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    :cond_29
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2e

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "cvc-type.2"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v15

    invoke-virtual {v6, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    iget-boolean v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v2, :cond_2d

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v2, v11, :cond_2c

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v2

    if-ne v2, v12, :cond_2b

    iput-boolean v11, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    const/4 v0, 0x0

    goto :goto_d

    :cond_2b
    :try_start_0
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v0

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/DatatypeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_d

    :catch_0
    const/4 v0, 0x0

    goto :goto_d

    :cond_2c
    const/4 v0, 0x0

    goto :goto_d

    :cond_2d
    const/4 v0, 0x0

    goto :goto_d

    :cond_2e
    iget-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v0, :cond_30

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v2

    if-ne v2, v12, :cond_2f

    iput-boolean v11, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    const/4 v0, 0x0

    goto :goto_d

    :cond_2f
    :try_start_1
    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v0

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/DatatypeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    goto :goto_d

    :cond_30
    const/4 v0, 0x0

    :goto_d
    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    if-ne v2, v1, :cond_31

    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v2

    iput-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    :cond_31
    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz v2, :cond_32

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->startContentModel()[I

    move-result-object v2

    iput-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    :cond_32
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v3, :cond_33

    invoke-virtual {v6, v7, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getXsiNil(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    :cond_33
    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    if-ne v2, v1, :cond_34

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v13

    goto :goto_e

    :cond_34
    move-object v13, v0

    :goto_e
    iget-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz v0, :cond_35

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startElement()V

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->pushContext()V

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_35

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    if-lez v0, :cond_35

    iput-boolean v11, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0, v1, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->initValueStoresFor(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;)V

    :cond_35
    invoke-virtual {v6, v7, v8, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    if-eqz v13, :cond_36

    invoke-virtual {v6, v7, v8, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->addDefaultAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_36
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v0

    :goto_f
    if-lt v15, v0, :cond_38

    iget-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_37

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    iget-boolean v2, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-boolean v2, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    goto :goto_10

    :cond_37
    move-object v0, v9

    :goto_10
    return-object v0

    :cond_38
    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v1, v15}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_f
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleIgnorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method processAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v11

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    if-eq v0, v12, :cond_0

    move v15, v13

    goto :goto_0

    :cond_0
    move v15, v14

    :goto_0
    const/16 v16, 0x0

    if-nez v15, :cond_1

    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    iget-object v2, v10, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object v6, v0

    move v5, v1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move v5, v13

    move-object/from16 v4, v16

    move-object v6, v4

    :goto_1
    move v3, v13

    move-object/from16 v0, v16

    move-object/from16 v17, v0

    :goto_2
    const/4 v2, 0x3

    const/4 v1, 0x2

    if-lt v3, v11, :cond_3

    if-nez v15, :cond_2

    iget-object v0, v10, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz v17, :cond_2

    const-string v0, "cvc-complex-type.5.2"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v13

    aput-object v17, v2, v14

    iget-object v3, v10, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {v7, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v9, v3, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-boolean v2, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v2, :cond_5

    iget-boolean v2, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v12, v0

    goto :goto_5

    :cond_5
    :goto_3
    invoke-interface {v9, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    const-string v2, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->reset()V

    goto :goto_4

    :cond_6
    new-instance v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    const-string v12, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v12, v2}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    move-object v12, v2

    :goto_5
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    if-ne v0, v2, :cond_c

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    if-ne v0, v2, :cond_7

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v20, v0

    goto :goto_6

    :cond_7
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    if-ne v0, v2, :cond_8

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v20, v0

    goto :goto_6

    :cond_8
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    if-ne v0, v2, :cond_9

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v20, v0

    goto :goto_6

    :cond_9
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    if-ne v0, v2, :cond_a

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v20, v0

    goto :goto_6

    :cond_a
    move-object/from16 v20, v16

    :goto_6
    if-eqz v20, :cond_b

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v4, v20

    move/from16 v23, v5

    move-object/from16 v5, v18

    move-object/from16 v24, v6

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V

    move/from16 v19, v13

    move/from16 v18, v14

    move-object/from16 v14, v22

    move/from16 v22, v23

    move-object/from16 v13, v24

    const/16 v20, 0x10

    goto/16 :goto_e

    :cond_b
    move/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    goto :goto_7

    :cond_c
    move/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    :goto_7
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v0, v2, :cond_1d

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const-string v2, "xmlns:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v19, v13

    move/from16 v18, v14

    move-object/from16 v14, v22

    move/from16 v22, v23

    move-object/from16 v13, v24

    const/16 v20, 0x10

    goto/16 :goto_e

    :cond_d
    if-eqz v15, :cond_e

    const-string v0, "cvc-type.3.1.1"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v13

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v14

    invoke-virtual {v7, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v19, v13

    move/from16 v18, v14

    move-object/from16 v14, v22

    move/from16 v22, v23

    move-object/from16 v13, v24

    const/16 v20, 0x10

    goto/16 :goto_e

    :cond_e
    move v0, v13

    move/from16 v6, v23

    :goto_8
    if-lt v0, v6, :cond_f

    move-object/from16 v4, v16

    move-object/from16 v5, v24

    goto :goto_9

    :cond_f
    move-object/from16 v5, v24

    invoke-interface {v5, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v3, v4, :cond_1c

    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v3, v4, :cond_1b

    move-object v4, v2

    :goto_9
    if-nez v4, :cond_11

    move-object/from16 v3, v22

    if-eqz v3, :cond_10

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const-string v0, "cvc-complex-type.3.2.2"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v13

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v14

    invoke-virtual {v7, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    move/from16 v22, v6

    move/from16 v19, v13

    move/from16 v18, v14

    const/16 v20, 0x10

    move-object v14, v3

    move-object v13, v5

    goto/16 :goto_e

    :cond_11
    move-object/from16 v3, v22

    :cond_12
    if-eqz v4, :cond_13

    iget-object v0, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v22, v4

    move/from16 v19, v13

    move/from16 v18, v14

    move-object v4, v0

    move-object v14, v3

    move-object v13, v5

    const/16 v5, 0x10

    goto/16 :goto_c

    :cond_13
    iget-short v0, v3, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v0, v1, :cond_14

    move/from16 v22, v6

    move/from16 v19, v13

    move/from16 v18, v14

    const/16 v20, 0x10

    move-object v14, v3

    move-object v13, v5

    goto/16 :goto_e

    :cond_14
    const/4 v2, 0x6

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v13, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move v1, v2

    move-object/from16 v2, v22

    move-object v14, v3

    move-object/from16 v3, p1

    move-object/from16 v22, v4

    move-object v4, v13

    move-object v13, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    goto :goto_a

    :cond_15
    move-object/from16 v0, v16

    :goto_a
    if-nez v0, :cond_17

    iget-short v0, v14, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const-string v0, "cvc-complex-type.3.2.2"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {v7, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v22, v6

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x10

    goto/16 :goto_e

    :cond_16
    move/from16 v18, v1

    move/from16 v22, v6

    const/16 v19, 0x0

    const/16 v20, 0x10

    goto/16 :goto_e

    :cond_17
    const/4 v2, 0x2

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getTypeCategory()S

    move-result v1

    const/16 v5, 0x10

    if-ne v1, v5, :cond_1a

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v17, :cond_18

    const-string v1, "cvc-complex-type.5.1"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v4, v3, v19

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    const/16 v18, 0x1

    aput-object v4, v3, v18

    aput-object v17, v3, v2

    invoke-virtual {v7, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_18
    const/16 v18, 0x1

    const/16 v19, 0x0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v17, v1

    goto :goto_c

    :cond_19
    const/16 v18, 0x1

    const/16 v19, 0x0

    goto :goto_b

    :cond_1a
    const/16 v18, 0x1

    const/16 v19, 0x0

    :goto_b
    move-object v4, v0

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v21

    move/from16 v20, v5

    move-object/from16 v5, v22

    move/from16 v22, v6

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V

    goto :goto_e

    :cond_1b
    move v2, v1

    move/from16 v19, v13

    move/from16 v18, v14

    move-object/from16 v14, v22

    const/4 v3, 0x3

    const/16 v20, 0x10

    move-object v13, v5

    move/from16 v22, v6

    goto :goto_d

    :cond_1c
    move v2, v1

    move/from16 v19, v13

    move/from16 v18, v14

    move-object/from16 v14, v22

    const/4 v3, 0x3

    const/16 v20, 0x10

    move-object v13, v5

    move/from16 v22, v6

    :goto_d
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move-object/from16 v24, v13

    move/from16 v13, v19

    move/from16 v6, v22

    move-object/from16 v22, v14

    move/from16 v14, v18

    goto/16 :goto_8

    :cond_1d
    move/from16 v19, v13

    move/from16 v18, v14

    move-object/from16 v14, v22

    move/from16 v22, v23

    move-object/from16 v13, v24

    const/16 v20, 0x10

    :goto_e
    add-int/lit8 v3, v21, 0x1

    move-object v0, v12

    move-object v6, v13

    move-object v4, v14

    move/from16 v14, v18

    move/from16 v13, v19

    move/from16 v12, v20

    move/from16 v5, v22

    goto/16 :goto_2
.end method

.method processElementContent(Lmf/org/apache/xerces/xni/QName;)V
    .locals 10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v3, v3

    if-ge v3, v2, :cond_1

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v4, v2, [C

    iput-object v4, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {v0, v1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iput v2, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    const/4 v2, 0x0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "cvc-elt.3.2.1"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    const/4 v5, 0x3

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-static {v0, v6, v7, v2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ElementDefaultValidImmediate(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "cvc-elt.5.1.1"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v6}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v6

    if-ne v6, v3, :cond_c

    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v7, :cond_7

    const-string v7, "cvc-elt.5.2.2.1"

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v8, v1

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v8, v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v8, v5, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "cvc-elt.5.2.2.2.1"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v5, v1

    aput-object v6, v5, v4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object p1, v5, v3

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget-short v7, v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v7, v4, :cond_c

    if-eqz v0, :cond_c

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v7, v8}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    const-string v0, "cvc-elt.5.2.2.2.2"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v5, v1

    aput-object v6, v5, v4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_c

    if-eqz v0, :cond_c

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v7, v8}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const-string v0, "cvc-elt.5.2.2.2.2"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v5, v1

    aput-object v6, v5, v4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    if-nez p1, :cond_d

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v3, :cond_e

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v3, v3

    if-ge v3, v0, :cond_f

    :cond_e
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v4, v0, [C

    iput-object v4, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_f
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {p1, v1, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iput v0, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_10
    return-void
.end method

.method processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-interface/range {p2 .. p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    iget-object v7, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    :try_start_0
    iget-object v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v14, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v7, v6, v0, v14}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v13

    iget-boolean v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    move-object/from16 v14, p2

    move/from16 v15, p3

    invoke-interface {v14, v15, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    :cond_0
    invoke-interface {v7}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    if-ne v0, v11, :cond_2

    invoke-interface {v7}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v0

    const/16 v14, 0x14

    if-ne v0, v14, :cond_2

    move-object v0, v13

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    iget-object v14, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v15, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v14

    if-eqz v14, :cond_2

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v14, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v14, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "cvc-attribute.3"

    new-array v14, v10, [Ljava/lang/Object;

    iget-object v15, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v15, v14, v9

    iget-object v15, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v15, v15, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v15, v14, v11

    aput-object v6, v14, v12

    instance-of v15, v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v15, :cond_1

    move-object v15, v7

    check-cast v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v15

    :goto_0
    aput-object v15, v14, v8

    invoke-virtual {v1, v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    if-eqz v13, :cond_4

    invoke-virtual/range {p4 .. p4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v12, :cond_4

    iget-object v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v14, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v0, v14}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "cvc-attribute.4"

    new-array v14, v10, [Ljava/lang/Object;

    iget-object v15, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v15, v14, v9

    iget-object v15, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v15, v15, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v15, v14, v11

    aput-object v6, v14, v12

    iget-object v15, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v8

    invoke-virtual {v1, v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz v13, :cond_6

    if-eqz v4, :cond_6

    iget-short v0, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-ne v0, v12, :cond_6

    iget-object v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v14, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v0, v14}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "cvc-complex-type.3.1"

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v10, v9

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v10, v11

    aput-object v6, v10, v12

    iget-object v2, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v8

    invoke-virtual {v1, v0, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-boolean v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-eqz v0, :cond_7

    iget-object v0, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    :cond_7
    iget-boolean v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_9

    iput-object v3, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    iput-object v7, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    iput-short v12, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iget v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iget-object v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fErrors:[Ljava/lang/String;

    if-nez v0, :cond_8

    move v11, v12

    :cond_8
    iput-short v11, v5, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    :cond_9
    return-void
.end method

.method processRootElementDeclQName(Ljavax/xml/namespace/QName;Lmf/org/apache/xerces/xni/QName;)V
    .locals 7

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p2, "cvc-elt.1.a"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V

    :goto_2
    return-void
.end method

.method processRootTypeQName(Ljavax/xml/namespace/QName;)V
    .locals 7

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    :cond_2
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string v0, "cvc-type.1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->resetIDTables()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    const/4 v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->clear()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v4}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reset(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v4}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v4, v3

    :goto_0
    if-nez v4, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset()V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    return-void

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v4, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    const-string v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v4}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-eq v4, v5, :cond_1

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    :cond_1
    :try_start_1
    const-string v5, "http://apache.org/xml/features/namespace-growth"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    :goto_1
    :try_start_2
    const-string v5, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    :goto_2
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-eqz v5, :cond_2

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    goto :goto_3

    :cond_2
    :try_start_3
    const-string v5, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    :goto_3
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-eqz v5, :cond_3

    :try_start_4
    const-string v5, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_3
    :try_start_5
    const-string v5, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    :goto_4
    :try_start_6
    const-string v5, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    :goto_5
    :try_start_7
    const-string v5, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    :goto_6
    :try_start_8
    const-string v5, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_7

    :catch_8
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    :goto_7
    :try_start_9
    const-string v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_8

    :catch_9
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    :goto_8
    :try_start_a
    const-string v5, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_9

    :catch_a
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    :goto_9
    const-string v5, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    const-string v5, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    :try_start_b
    const-string v5, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_a

    :cond_4
    instance-of v6, v5, Ljavax/xml/namespace/QName;

    if-eqz v6, :cond_5

    check-cast v5, Ljavax/xml/namespace/QName;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_a

    :cond_5
    check-cast v5, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;
    :try_end_b
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_a

    :catch_b
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    :goto_a
    :try_start_c
    const-string v5, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_b

    :cond_6
    instance-of v6, v5, Ljavax/xml/namespace/QName;

    if-eqz v6, :cond_7

    check-cast v5, Ljavax/xml/namespace/QName;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_b

    :cond_7
    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;
    :try_end_c
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_b

    :catch_c
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    :goto_b
    :try_start_d
    const-string v5, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    invoke-interface {p1, v5}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v5
    :try_end_d
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_c

    :catch_d
    move v5, v0

    :goto_c
    if-eqz v5, :cond_8

    goto :goto_d

    :cond_8
    move v0, v2

    :goto_d
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    :try_start_e
    const-string v0, "http://apache.org/xml/features/validation/identity-constraint-checking"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z
    :try_end_e
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    :goto_e
    :try_start_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string v2, "http://apache.org/xml/features/validation/id-idref-checking"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V
    :try_end_f
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V

    :goto_f
    :try_start_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string v2, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V
    :try_end_10
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V

    :goto_10
    :try_start_11
    const-string v0, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    const-string v0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;
    :try_end_11
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    :goto_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v0, v2, v3, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :try_start_12
    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;
    :try_end_12
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    :goto_12
    :try_start_13
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_13
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_13
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_0

    :cond_0
    instance-of p1, p2, Ljavax/xml/namespace/QName;

    if-eqz p1, :cond_1

    check-cast p2, Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_0

    :cond_1
    check-cast p2, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    goto :goto_0

    :cond_2
    const-string v0, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_3

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0

    :cond_3
    instance-of p1, p2, Ljavax/xml/namespace/QName;

    if-eqz p1, :cond_4

    check-cast p2, Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0

    :cond_4
    check-cast p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    :cond_5
    :goto_0
    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->startValueScope()V

    return-void
.end method

.method storeLocations(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p1, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    const-string v3, "SchemaLocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_1
    if-eqz p2, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    if-nez p1, :cond_2

    new-instance p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method
