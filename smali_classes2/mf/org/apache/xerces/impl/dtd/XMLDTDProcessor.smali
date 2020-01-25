.class public Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;
.super Ljava/lang/Object;
.source "XMLDTDProcessor.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDFilter;
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelFilter;


# static fields
.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final TOP_LEVEL_SCOPE:I = -0x1

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"


# instance fields
.field protected fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

.field private fDTDElementDeclName:Ljava/lang/String;

.field private final fDTDElementDecls:Ljava/util/ArrayList;

.field protected fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field protected fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

.field protected fDTDValidation:Z

.field private final fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInDTDIgnore:Z

.field protected fLocale:Ljava/util/Locale;

.field private fMixed:Z

.field private final fMixedElementTypes:Ljava/util/ArrayList;

.field private final fNDataDeclNotations:Ljava/util/HashMap;

.field private fNotationEnumVals:Ljava/util/HashMap;

.field private fPerformValidation:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fTableOfIDAttributeNames:Ljava/util/HashMap;

.field private fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

.field protected fValidation:Z

.field protected fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fWarnDuplicateAttdef:Z

.field protected fWarnOnUndeclaredElemdef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "http://xml.org/sax/features/validation"

    const-string v1, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    const-string v2, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    const-string v3, "http://apache.org/xml/features/scanner/notify-char-refs"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sput-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v3, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v4, "http://apache.org/xml/properties/internal/validator/dtd"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDeclName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/ArrayList;

    return-void
.end method

.method private checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V
    .locals 4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstElementDeclIndex()I

    move-result v0

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecType(I)S

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecIndex(I)I

    move-result v2

    invoke-direct {p0, p1, v0, v2, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;IILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    :cond_2
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextElementDeclIndex(I)I

    move-result v0

    goto :goto_0
.end method

.method private checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;IILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V
    .locals 5

    invoke-virtual {p1, p3, p4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short p3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p3, :cond_0

    iget-object p3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_4

    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result p4

    const/4 v3, -0x1

    if-ne p4, v3, :cond_4

    iget-object p4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "UndeclaredElementInContentSpec"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclName(I)Lmf/org/apache/xerces/xni/QName;

    move-result-object p1

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p1, v1, v2

    aput-object p3, v1, v0

    invoke-virtual {p4, v3, v4, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-short p3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v3, 0x4

    if-eq p3, v3, :cond_3

    iget-short p3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v3, 0x5

    if-ne p3, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-short p3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eq p3, v1, :cond_2

    iget-short p3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eq p3, v0, :cond_2

    iget-short p3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    :cond_2
    iget-object p3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v2

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;IILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p3, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v2

    iget-object v0, p4, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v2

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;IILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;IILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected static checkStandaloneEntityRef(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/DTDGrammar;Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)Z

    iget-boolean p1, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    if-eqz p1, :cond_0

    const-string p1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string p2, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p3, p1, p2, v1, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private normalizeDefaultAttrValue(Lmf/org/apache/xerces/xni/XMLString;)Z
    .locals 8

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v1, v2

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-lt v2, v1, :cond_2

    if-eq v0, v1, :cond_1

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int/2addr v0, v1

    iput v0, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    return v3

    :cond_1
    return v5

    :cond_2
    iget-object v6, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v6, v6, v2

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_5

    iget-object v4, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    add-int/lit8 v5, v0, 0x1

    aput-char v7, v4, v0

    move v4, v3

    move v0, v5

    goto :goto_1

    :cond_3
    if-eq v0, v2, :cond_4

    iget-object v4, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v6, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v6, v6, v2

    aput-char v6, v4, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public any(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->any(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->any(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eq v12, v1, :cond_0

    if-eqz v15, :cond_0

    invoke-direct {v0, v15}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->normalizeDefaultAttrValue(Lmf/org/apache/xerces/xni/XMLString;)Z

    :cond_0
    iget-boolean v1, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v1, :cond_21

    iget-object v1, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v10}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v11}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    iget-boolean v1, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnDuplicateAttdef:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "MSG_DUPLICATE_ATTRIBUTE_DEFINITION"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v10, v7, v4

    aput-object v11, v7, v5

    invoke-virtual {v1, v2, v6, v7, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    const/4 v6, 0x3

    if-ne v12, v2, :cond_7

    if-eqz v15, :cond_5

    iget v2, v15, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-eqz v2, :cond_5

    if-eqz v14, :cond_4

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIMPLIEDSymbol:Ljava/lang/String;

    if-eq v14, v2, :cond_5

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fREQUIREDSymbol:Ljava/lang/String;

    if-eq v14, v2, :cond_5

    :cond_4
    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "IDDefaultTypeInvalid"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v11, v9, v4

    invoke-virtual {v2, v7, v8, v9, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_5
    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "MSG_MORE_THAN_ONE_ID_ATTRIBUTE"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v10, v3, v4

    aput-object v2, v3, v5

    const/4 v2, 0x2

    aput-object v11, v3, v2

    invoke-virtual {v7, v8, v9, v3, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    :goto_2
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    if-ne v12, v2, :cond_a

    move v2, v4

    :goto_3
    array-length v3, v13

    if-lt v2, v3, :cond_9

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v1, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    if-nez v1, :cond_a

    iget-object v1, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v7, "MSG_MORE_THAN_ONE_NOTATION_ATTRIBUTE"

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v10, v8, v4

    aput-object v1, v8, v5

    const/4 v1, 0x2

    aput-object v11, v8, v1

    invoke-virtual {v2, v3, v7, v8, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object v3, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/HashMap;

    aget-object v7, v13, v2

    invoke-virtual {v3, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    if-eq v12, v1, :cond_b

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    if-ne v12, v1, :cond_f

    :cond_b
    move v1, v4

    :goto_5
    array-length v2, v13

    if-lt v1, v2, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_6
    array-length v7, v13

    if-lt v3, v7, :cond_d

    move v1, v2

    goto :goto_5

    :cond_d
    aget-object v7, v13, v1

    aget-object v8, v13, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    if-ne v12, v7, :cond_e

    const-string v7, "MSG_DISTINCT_TOKENS_IN_ENUMERATION"

    goto :goto_7

    :cond_e
    const-string v7, "MSG_DISTINCT_NOTATION_IN_ENUMERATION"

    :goto_7
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v10, v6, v4

    aget-object v1, v13, v1

    aput-object v1, v6, v5

    const/4 v1, 0x2

    aput-object v11, v6, v1

    invoke-virtual {v2, v3, v7, v6, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_f
    :goto_8
    if-eqz v15, :cond_21

    if-eqz v14, :cond_10

    if-eqz v14, :cond_21

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->fFIXEDSymbol:Ljava/lang/String;

    if-ne v14, v1, :cond_21

    :cond_10
    invoke-virtual/range {p6 .. p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_19

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_19

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    if-ne v12, v2, :cond_11

    goto :goto_c

    :cond_11
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_14

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_14

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_14

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    if-ne v12, v2, :cond_12

    goto :goto_9

    :cond_12
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    if-eq v12, v2, :cond_13

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    if-ne v12, v2, :cond_15

    :cond_13
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    move v2, v4

    goto :goto_a

    :cond_14
    :goto_9
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->isValidName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    move v2, v4

    goto :goto_a

    :cond_15
    move v2, v5

    :goto_a
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    if-eq v12, v3, :cond_16

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->fENUMERATIONSymbol:Ljava/lang/String;

    if-ne v12, v3, :cond_1f

    :cond_16
    move v2, v4

    move v3, v2

    :goto_b
    array-length v6, v13

    if-lt v2, v6, :cond_17

    move v2, v3

    goto :goto_d

    :cond_17
    aget-object v6, v13, v2

    invoke-virtual {v15, v6}, Lmf/org/apache/xerces/xni/XMLString;->equals(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v3, v5

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    :goto_c
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " "

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    if-ne v12, v6, :cond_1b

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    move v2, v4

    goto :goto_d

    :cond_1b
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    if-eq v12, v6, :cond_1c

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    if-ne v12, v6, :cond_1d

    :cond_1c
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->isValidName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    move v2, v4

    goto :goto_d

    :cond_1d
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_1e
    move v2, v5

    :cond_1f
    :goto_d
    if-nez v2, :cond_21

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "MSG_ATT_DEFAULT_INVALID"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v11, v7, v4

    aput-object v1, v7, v5

    invoke-virtual {v2, v3, v6, v7, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_e

    :cond_20
    const/4 v7, 0x2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_21
    :goto_e
    iget-object v1, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v1, :cond_22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_22
    iget-object v1, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_23

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_23
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "DuplicateTypeInMixedContent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDeclName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "MSG_ELEMENT_ALREADY_DECLARED"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public empty(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->empty(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->empty(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fInDTDIgnore:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v0, :cond_0

    const-string v3, "http://www.w3.org/TR/REC-xml"

    new-array v4, v2, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-nez v4, :cond_7

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/HashMap;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnOnUndeclaredElemdef:Z

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkDeclaredElements(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V

    goto/16 :goto_4

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecType(I)S

    move-result v7

    if-ne v7, v2, :cond_4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "NoNotationOnEmptyElement"

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v5, v10, v1

    aput-object v4, v10, v2

    invoke-virtual {v7, v8, v9, v10, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v9, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v10, "MSG_NOTATION_NOT_DECLARED_FOR_NOTATIONTYPE_ATTRIBUTE"

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v3, v11, v1

    aput-object v7, v11, v2

    invoke-virtual {v8, v9, v10, v11, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "MSG_NOTATION_NOT_DECLARED_FOR_UNPARSED_ENTITYDECL"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    aput-object v7, v6, v2

    invoke-virtual {v5, v8, v9, v6, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_9
    return-void
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDContentModelSource()Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getDTDSource()Lmf/org/apache/xerces/xni/parser/XMLDTDSource;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method protected isValidName(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isValidNmtoken(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNmtoken(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "UniqueNotationName"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixed:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fInDTDIgnore:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNotationEnumVals:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfIDAttributeNames:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fTableOfNOTATIONAttributeNames:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->reset()V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    :goto_1
    :try_start_2
    const-string v2, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDValidation:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDValidation:Z

    :goto_3
    :try_start_3
    const-string v0, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnDuplicateAttdef:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnDuplicateAttdef:Z

    :goto_4
    :try_start_4
    const-string v0, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnOnUndeclaredElemdef:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fWarnOnUndeclaredElemdef:Z

    :goto_5
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_6
    :try_start_6
    const-string v1, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    goto :goto_7

    :catch_7
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    :goto_7
    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getGrammarBucket()Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    goto :goto_8

    :cond_2
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    :goto_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->reset()V

    return-void
.end method

.method public separator(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

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

.method public startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fInDTDIgnore:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDeclName:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixedElementTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDElementDecls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fMixed:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->checkStandaloneEntityRef(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/DTDGrammar;Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fValidation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fNDataDeclNotations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method
