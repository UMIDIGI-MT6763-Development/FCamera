.class public Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
.super Ljava/lang/Object;
.source "XMLDTDValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
.implements Lmf/org/apache/xerces/impl/RevalidationHandler;


# static fields
.field protected static final BALANCE_SYNTAX_TREES:Ljava/lang/String; = "http://apache.org/xml/features/validation/balance-syntax-trees"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field private static final DEBUG_ATTRIBUTES:Z = false

.field private static final DEBUG_ELEMENT_CHILDREN:Z = false

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final TOP_LEVEL_SCOPE:I = -0x1

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"


# instance fields
.field protected fBalanceSyntaxTrees:Z

.field private final fBuffer:Ljava/lang/StringBuffer;

.field private fContentSpecTypeStack:[I

.field private fCurrentContentSpecType:I

.field private final fCurrentElement:Lmf/org/apache/xerces/xni/QName;

.field private fCurrentElementIndex:I

.field protected fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

.field protected fDTDValidation:Z

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field private fElementChildren:[Lmf/org/apache/xerces/xni/QName;

.field private fElementChildrenLength:I

.field private fElementChildrenOffsetStack:[I

.field private fElementDepth:I

.field private fElementIndexStack:[I

.field private fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

.field private final fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fInCDATASection:Z

.field private fInElementContent:Z

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespaces:Z

.field private fPerformValidation:Z

.field private final fRootElement:Lmf/org/apache/xerces/xni/QName;

.field private fSchemaType:Ljava/lang/String;

.field protected fSeenDoctypeDecl:Z

.field private fSeenRootElement:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

.field private fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

.field private final fTempQName:Lmf/org/apache/xerces/xni/QName;

.field protected fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNOTATION:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValidation:Z

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected final fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field protected fWarnDuplicateAttdef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "http://xml.org/sax/features/namespaces"

    const-string v1, "http://xml.org/sax/features/validation"

    const-string v2, "http://apache.org/xml/features/validation/dynamic"

    const-string v3, "http://apache.org/xml/features/validation/balance-syntax-trees"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    const-string v4, "http://apache.org/xml/properties/internal/validation-manager"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    new-instance v1, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    const/4 v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    const/16 v2, 0x8

    new-array v3, v2, [I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    new-array v2, v2, [Lmf/org/apache/xerces/xni/QName;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    const/16 v2, 0x20

    new-array v3, v2, [Lmf/org/apache/xerces/xni/QName;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    new-array v2, v2, [I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    return-void

    :cond_0
    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private charDataInContent()V
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    if-gt v1, v2, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lmf/org/apache/xerces/xni/QName;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v2, v0

    if-lt v1, v2, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    return-void
.end method

.method private checkContent(I[Lmf/org/apache/xerces/xni/QName;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p4, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    invoke-interface {p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;->validate([Lmf/org/apache/xerces/xni/QName;II)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private ensureStackCapacity(I)V
    .locals 5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v0

    if-ne p1, v1, :cond_2

    mul-int/lit8 v1, p1, 0x2

    new-array v2, v1, [Lmf/org/apache/xerces/xni/QName;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    move v0, p1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v4, v2

    if-lt v0, v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v4}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array v0, v1, [I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    new-array v0, v1, [I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    :cond_2
    return-void
.end method

.method private getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    packed-switch v0, :pswitch_data_0

    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    return-object p1

    :pswitch_0
    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    return-object p1

    :pswitch_1
    iget-object p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_0

    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    :goto_0
    return-object p1

    :pswitch_2
    iget-object p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    :goto_1
    return-object p1

    :pswitch_3
    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    return-object p1

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-lez v1, :cond_3

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_5
    iget-object p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_4

    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    goto :goto_3

    :cond_4
    sget-object p1, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getContentSpecType(I)I
    .locals 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v1, p1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, p1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    :cond_0
    return v0
.end method

.method private normalizeAttrValue(Lmf/org/apache/xerces/xni/XMLAttributes;I)Z
    .locals 11

    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v2, 0x1

    move v8, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    array-length v9, v1

    const/16 v10, 0x20

    if-lt v4, v9, :cond_1

    if-lez v5, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    aget-char v9, v1, v4

    if-ne v9, v10, :cond_3

    if-eqz v6, :cond_2

    move v7, v2

    move v6, v3

    :cond_2
    if-eqz v7, :cond_4

    if-nez v8, :cond_4

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    aget-char v9, v1, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    move v7, v3

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    aget-char v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    move v6, v2

    move v7, v3

    move v8, v7

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private final rootElementSpecified(Lmf/org/apache/xerces/xni/QName;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "RootElementTypeMustMatchDoctypedecl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p1, v4, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method protected addDTDDefaultAttrsAndValidate(Lmf/org/apache/xerces/xni/QName;ILmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1b

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v5, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v5, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v5

    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v4, :cond_c

    invoke-interface/range {p3 .. p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v9

    move v10, v7

    :goto_1
    if-lt v10, v9, :cond_1

    return-void

    :cond_1
    invoke-interface {v3, v10}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v11

    iget-boolean v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v5, :cond_2

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v10}, Lmf/org/apache/xerces/xni/XMLAttributes;->getNonNormalizedValue(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v12, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v13, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v14, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v5, v15, v7

    invoke-virtual {v12, v13, v14, v15, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v5

    :goto_2
    if-ne v5, v4, :cond_3

    move v12, v7

    goto :goto_3

    :cond_3
    iget-object v12, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v13, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {v12, v5, v13}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    iget-object v12, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v12, v11, :cond_b

    move v12, v8

    :goto_3
    if-nez v12, :cond_4

    iget-boolean v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v5, :cond_a

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v12, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v5, v7

    aput-object v11, v5, v8

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v13, "MSG_ATTRIBUTE_NOT_DECLARED"

    invoke-virtual {v11, v12, v13, v5, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_4

    :cond_4
    iget-object v12, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v0, v12}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v10, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->setType(ILjava/lang/String;)V

    invoke-interface {v3, v10}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v13

    const-string v14, "ATTRIBUTE_DECLARED"

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v13, v14, v15}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v10}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v10}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v14

    const/4 v15, 0x3

    if-eqz v14, :cond_6

    sget-object v14, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eq v12, v14, :cond_6

    invoke-direct {v0, v3, v10}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->normalizeAttrValue(Lmf/org/apache/xerces/xni/XMLAttributes;I)Z

    move-result v12

    invoke-interface {v3, v10}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v14

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v12, :cond_5

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v12, "MSG_ATTVALUE_CHANGED_DURING_NORMALIZATION_WHEN_STANDALONE"

    new-array v6, v15, [Ljava/lang/Object;

    aput-object v11, v6, v7

    aput-object v13, v6, v8

    const/4 v13, 0x2

    aput-object v14, v6, v13

    invoke-virtual {v4, v5, v12, v6, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_5
    move-object v13, v14

    :cond_6
    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    const/4 v5, 0x4

    if-ne v4, v8, :cond_8

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v12, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v12, v6, v7

    aput-object v11, v6, v8

    const/4 v11, 0x2

    aput-object v13, v6, v11

    aput-object v4, v6, v15

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v11, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v12, "MSG_FIXED_ATTVALUE_INVALID"

    invoke-virtual {v4, v11, v12, v6, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_8
    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    if-eq v4, v8, :cond_9

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const/4 v6, 0x2

    if-eq v4, v6, :cond_9

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    if-eq v4, v15, :cond_9

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    if-eq v4, v5, :cond_9

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const/4 v5, 0x5

    if-eq v4, v5, :cond_9

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const/4 v5, 0x6

    if-ne v4, v5, :cond_a

    :cond_9
    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {v0, v1, v13, v4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->validateDTDattribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_b
    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v5

    const/4 v4, -0x1

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_c
    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v6, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v6, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v10, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v0, v10}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v11, v11, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v11, v11, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    const/4 v12, 0x0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    if-eqz v13, :cond_d

    iget-object v12, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    const/4 v13, 0x2

    goto :goto_5

    :cond_d
    const/4 v13, 0x2

    :goto_5
    if-ne v11, v13, :cond_e

    move v11, v8

    goto :goto_6

    :cond_e
    move v11, v7

    :goto_6
    sget-object v13, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-ne v10, v13, :cond_f

    move v13, v8

    goto :goto_7

    :cond_f
    move v13, v7

    :goto_7
    if-eqz v13, :cond_10

    if-nez v11, :cond_10

    if-eqz v12, :cond_11

    :cond_10
    invoke-interface/range {p3 .. p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v13

    move v14, v7

    :goto_8
    if-lt v14, v13, :cond_12

    :cond_11
    move v13, v7

    goto :goto_9

    :cond_12
    invoke-interface {v3, v14}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v15

    if-ne v15, v9, :cond_1a

    move v13, v8

    :goto_9
    if-nez v13, :cond_19

    if-eqz v11, :cond_14

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v4, :cond_13

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v6, v4, v7

    aput-object v9, v4, v8

    iget-object v6, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "MSG_REQUIRED_ATTRIBUTE_NOT_SPECIFIED"

    invoke-virtual {v6, v7, v9, v4, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    const/4 v11, -0x1

    goto :goto_b

    :cond_13
    const/4 v11, -0x1

    goto :goto_b

    :cond_14
    if-eqz v12, :cond_18

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v11, :cond_15

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v11, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v11

    if-eqz v11, :cond_15

    const/4 v15, 0x2

    new-array v11, v15, [Ljava/lang/Object;

    iget-object v13, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v13, v11, v7

    aput-object v9, v11, v8

    iget-object v13, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v14, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v15, "MSG_DEFAULTED_ATTRIBUTE_NOT_SPECIFIED"

    invoke-virtual {v13, v14, v15, v11, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_15
    iget-boolean v8, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    if-eqz v8, :cond_16

    const/16 v8, 0x3a

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_17

    invoke-virtual {v9, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :cond_16
    const/4 v11, -0x1

    :cond_17
    :goto_a
    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v7, v4, v6, v9, v8}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v3, v4, v10, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_18
    const/4 v11, -0x1

    goto :goto_b

    :cond_19
    const/4 v11, -0x1

    :goto_b
    iget-object v4, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v5

    move v4, v11

    goto/16 :goto_0

    :cond_1a
    const/4 v15, 0x2

    const/16 v16, -0x1

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    :cond_1b
    :goto_c
    return-void
.end method

.method public characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    const/4 p1, 0x1

    return p1
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v1, v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->isSpace(I)Z

    move-result v1

    if-nez v1, :cond_7

    move v0, v2

    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v1, v2

    goto :goto_2

    :cond_1
    move v1, v3

    :goto_2
    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIsExternal(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "MSG_WHITE_SPACE_IN_ELEMENT_CONTENT_WHEN_STANDALONE"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    :cond_3
    if-eqz p2, :cond_4

    const-string v0, "CHAR_REF_PROBABLE_WS"

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v2, 0x2

    const-string v7, "character reference"

    aput-object v7, v6, v2

    invoke-virtual {v0, v4, v5, v6, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    :cond_5
    if-eqz v1, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v4, v5

    const-string v5, "EMPTY"

    aput-object v5, v4, v1

    const/4 v5, 0x2

    const-string v6, "comment"

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p1, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p3, v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v7, v2

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v2, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z

    if-nez v0, :cond_2

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    goto :goto_0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setCachedDTD(Z)V

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->setActiveGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_4
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    if-nez v0, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    :cond_1
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

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected endNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1, p3, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method protected getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_2

    const/16 v4, 0x3b

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v5

    if-le v5, v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-virtual {v3, v5, v6}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)Z

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    :cond_1
    return-object v4

    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getGrammarBucket()Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    if-eq v0, v3, :cond_2

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-eq v4, v3, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/2addr v6, v1

    aget v5, v5, v6

    add-int/2addr v5, v1

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    sub-int/2addr v6, v5

    invoke-direct {p0, v0, v4, v5, v6}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->checkContent(I[Lmf/org/apache/xerces/xni/QName;II)I

    move-result v4

    if-eq v4, v3, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v5, v0, v7}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v5, v5, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v7, 0x2

    if-ne v5, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "MSG_CONTENT_INVALID"

    new-array v6, v7, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v6, v2

    const-string p1, "EMPTY"

    aput-object p1, v6, v1

    invoke-virtual {v0, v4, v5, v6, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-eq v4, v6, :cond_1

    const-string v4, "MSG_CONTENT_INVALID"

    goto :goto_0

    :cond_1
    const-string v4, "MSG_CONTENT_INCOMPLETE"

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v7, v2

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v1

    invoke-virtual {v5, v6, v4, v7, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/2addr v0, v1

    aget p1, p1, v0

    add-int/2addr p1, v1

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->endNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-lt p1, v3, :cond_7

    if-gez p1, :cond_5

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/QName;->clear()V

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v0, "MSG_ELEMENT_WITH_ID_REQUIRED"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p2, p3, v0, v3, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    aget-object p1, p3, p1

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    iget p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget p1, p1, p2

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    aget p1, p1, p2

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    return-void

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "FWK008 Element stack underflow"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->validate()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setGrammarFound(Z)V

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->rootElementSpecified(Lmf/org/apache/xerces/xni/QName;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v0, :cond_1

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "MSG_GRAMMAR_NOT_FOUND"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v4, v5, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_3
    return v1

    :cond_4
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Lmf/org/apache/xerces/xni/QName;)I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecType(I)S

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "MSG_ELEMENT_NOT_DECLARED"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v4, v5, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->addDTDDefaultAttrsAndValidate(Lmf/org/apache/xerces/xni/QName;ILmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_6
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    array-length v2, v0

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-gt v2, v4, :cond_8

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    array-length v4, v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aput v4, v0, v2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v2, v0

    if-gt v2, v4, :cond_9

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lmf/org/apache/xerces/xni/QName;

    array-length v4, v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v2

    if-nez v0, :cond_b

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v4, v0

    if-lt v2, v4, :cond_a

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v0, v0, v2

    goto :goto_2

    :cond_a
    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v4}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    :goto_2
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->ensureStackCapacity(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    aput v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    aput v2, v0, v1

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->startNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    return v3
.end method

.method public final hasGrammar()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected init()V
    .locals 2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNOTATION:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected invalidStandaloneAttDef(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected isSpace(I)Z
    .locals 0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result p1

    return p1
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v4, v5

    const-string v5, "EMPTY"

    aput-object v5, v4, v1

    const/4 v5, 0x2

    const-string v6, "processing instruction"

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    const/4 v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3}, Lmf/org/apache/xerces/xni/QName;->clear()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->resetIDTables()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->clear()V

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    return-void

    :cond_0
    :try_start_1
    const-string v3, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    :goto_1
    :try_start_2
    const-string v3, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    :goto_2
    :try_start_3
    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_3

    :cond_1
    move v3, v2

    :goto_3
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    :goto_4
    :try_start_4
    const-string v2, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    :goto_5
    :try_start_5
    const-string v2, "http://apache.org/xml/features/validation/balance-syntax-trees"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z

    :goto_6
    :try_start_6
    const-string v2, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z

    :goto_7
    :try_start_7
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;

    :goto_8
    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setUsingNamespaces(Z)V

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    :try_start_8
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_9
    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->init()V

    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_2

    const-string v1, "http://www.w3.org/TR/REC-xml"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    aget-object v4, v0, v1

    check-cast v4, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v4, v5

    const-string v5, "EMPTY"

    aput-object v5, v4, v1

    const/4 v5, 0x2

    const-string v6, "ENTITY"

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->checkStandaloneEntityRef(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/DTDGrammar;Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method protected startNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public final validate()Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected validateDTDattribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {p3, p2, v2}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    goto/16 :goto_5

    :cond_0
    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {p3, p2, v2}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "NMTOKENSInvalid"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {p1, p3, v2, v3, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_5

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "NMTOKENInvalid"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {p1, p3, v2, v3, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_1
    iget-object p1, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {p3, p2, v2}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    goto/16 :goto_5

    :cond_2
    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {p3, p2, v2}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception p3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "IDREFSInvalid"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {p1, p3, v2, v3, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_5

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, v0, p3, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_2
    :try_start_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception p1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_3
    iget-object p1, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    if-nez p1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_5

    move v2, v0

    goto :goto_2

    :cond_5
    aget-object v3, p1, v2

    if-eq p2, v3, :cond_7

    aget-object v3, p1, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    move v2, v1

    :goto_2
    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_9

    move v3, v0

    :goto_3
    array-length v4, p1

    if-lt v3, v4, :cond_8

    goto :goto_4

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, p1, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "MSG_ATTRIBUTE_VALUE_NOT_IN_LIST"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object p3, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object p3, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p3, v5, v0

    aput-object p2, v5, v1

    const/4 p2, 0x2

    aput-object v2, v5, p2

    invoke-virtual {p1, v3, v4, v5, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_5

    :pswitch_4
    iget-object p1, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz p1, :cond_a

    :try_start_3
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_b
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    if-eqz p3, :cond_0

    const-string v1, "yes"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->setStandalone(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method
