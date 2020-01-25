.class abstract Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAbstractParticleTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;
    }
.end annotation


# instance fields
.field fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    new-instance p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    return-void
.end method

.method private traverseSeqChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;IZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v6, p3

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v9, 0x0

    move-object/from16 v10, p1

    invoke-virtual {v0, v10, v9, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v12, v11, v9, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    move-object v14, v0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v3, v11

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    :cond_1
    move-object v14, v13

    :goto_0
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->pushContext()V

    :goto_1
    const/4 v0, 0x3

    if-nez v12, :cond_5

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v1, v11, v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v2, v11, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v3, v11, v3

    check-cast v3, Ljava/lang/Long;

    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    if-eqz p5, :cond_2

    const/16 v5, 0x65

    goto :goto_2

    :cond_2
    const/16 v5, 0x66

    :goto_2
    iput-short v5, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->getParticleCount()I

    move-result v5

    iput v5, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->popContext()[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v5

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v14, :cond_3

    new-instance v5, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v5}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v6, v5

    check-cast v6, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v6, v14}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_3

    :cond_3
    sget-object v5, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_3
    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    new-instance v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v6}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput-object v4, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz p5, :cond_4

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    goto :goto_4

    :cond_4
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    :goto_4
    move-object v2, v0

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lmf/org/w3c/dom/Element;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v0, p0

    move-object v1, v6

    move-object v3, v4

    move/from16 v4, p4

    move-wide v5, v9

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v0

    :cond_5
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto/16 :goto_6

    :cond_6
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v0, v12, v8, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->hasAllContent(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "cos-all-limited.1.2"

    invoke-virtual {p0, v0, v13, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v0, v13

    goto/16 :goto_6

    :cond_7
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_6

    :cond_8
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_6

    :cond_9
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    invoke-virtual {v0, v12, v8, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseAny(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_6

    :cond_a
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p5, :cond_b

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "choice"

    aput-object v3, v0, v9

    const-string v3, "(annotation?, (element | group | choice | sequence | any)*)"

    aput-object v3, v0, v2

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_5

    :cond_b
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "sequence"

    aput-object v3, v0, v9

    const-string v3, "(annotation?, (element | group | choice | sequence | any)*)"

    aput-object v3, v0, v2

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_5
    const-string v1, "s4s-elt-must-match.1"

    invoke-virtual {p0, v1, v0, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v0, v13

    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->addParticle(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V

    :cond_d
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    goto/16 :goto_1
.end method


# virtual methods
.method protected hasAllContent(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short p1, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x67

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method traverseAll(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 14

    move-object v7, p0

    move-object/from16 v8, p2

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v6, 0x0

    move-object v9, p1

    invoke-virtual {v0, p1, v6, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v11, v10, v6, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    move-object v13, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v10

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    :cond_1
    move-object v13, v12

    :goto_0
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->pushContext()V

    :goto_1
    const/4 v0, 0x3

    if-nez v11, :cond_3

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v1, v10, v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v2, v10, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v3, v10, v3

    check-cast v3, Ljava/lang/Long;

    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v5, 0x67

    iput-short v5, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->getParticleCount()I

    move-result v5

    iput v5, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->popContext()[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v5

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v13, :cond_2

    new-instance v5, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v5}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v6, v5

    check-cast v6, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v6, v13}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_2

    :cond_2
    sget-object v5, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_2
    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    new-instance v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v6}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    iput v0, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput-object v4, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lmf/org/w3c/dom/Element;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object v0, p0

    move-object v1, v6

    move-object v3, v4

    move/from16 v4, p4

    move-wide v5, v11

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v0

    :cond_3
    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v4, 0x1

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "all"

    aput-object v1, v0, v6

    const/4 v1, 0x1

    const-string v2, "(annotation?, element*)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "s4s-elt-must-match.1"

    invoke-virtual {p0, v1, v0, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v0, v12

    :goto_3
    if-eqz v0, :cond_5

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->addParticle(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V

    :cond_5
    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    goto/16 :goto_1
.end method

.method traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSeqChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;IZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object p1

    return-object p1
.end method

.method traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSeqChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;IZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object p1

    return-object p1
.end method
