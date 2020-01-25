.class Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDSimpleTypeTraverser.java"


# instance fields
.field private fIsBuiltIn:Z


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    return-void
.end method

.method private final checkBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    :cond_1
    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    return p1
.end method

.method private errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 12

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v1, "string"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10

    if-eq p3, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v6, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    const/4 v9, 0x0

    const/4 p3, 0x1

    new-array v10, p3, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 p3, 0x0

    aput-object v5, v10, p3

    const/4 v11, 0x0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v6 .. v11}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object p1

    return-object p1
.end method

.method private findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, p5, v2, p3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v2, v3, :cond_2

    const-string p4, "cos-st-restricts.1.1"

    new-array p5, v6, [Ljava/lang/Object;

    iget-object p3, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p3, p5, v5

    aput-object p2, p5, v4

    invoke-virtual {p0, p4, p5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v0

    :cond_2
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne v1, v2, :cond_4

    if-ne p4, v6, :cond_4

    iget-object p4, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {p0, p2, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->checkBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    return-object v0

    :cond_3
    const-string p4, "cos-st-restricts.1.1"

    new-array p5, v6, [Ljava/lang/Object;

    iget-object p3, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p3, p5, v5

    aput-object p2, p5, v4

    invoke-virtual {p0, p4, p5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v0

    :cond_4
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getFinal()S

    move-result p5

    and-int/2addr p5, p4

    if-eqz p5, :cond_8

    if-ne p4, v6, :cond_5

    const-string p4, "st-props-correct.3"

    new-array p5, v6, [Ljava/lang/Object;

    aput-object p2, p5, v5

    iget-object p2, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p2, p5, v4

    invoke-virtual {p0, p4, p5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    :cond_5
    if-ne p4, v3, :cond_6

    const-string p4, "cos-st-restricts.2.3.1.1"

    new-array p5, v6, [Ljava/lang/Object;

    iget-object p3, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p3, p5, v5

    aput-object p2, p5, v4

    invoke-virtual {p0, p4, p5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    :cond_6
    const/16 p5, 0x8

    if-ne p4, p5, :cond_7

    const-string p4, "cos-st-restricts.3.3.1.1"

    new-array p5, v6, [Ljava/lang/Object;

    iget-object p3, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object p3, p5, v5

    aput-object p2, p5, v4

    invoke-virtual {p0, p4, p5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_7
    :goto_0
    return-object v0

    :cond_8
    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v1
.end method

.method private genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#AnonType_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getDocument(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Document;

    move-result-object v1

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v1, v4, v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    if-nez v1, :cond_0

    iget-short v1, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    :goto_0
    move v11, v1

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v12, :cond_2

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7, v12, v4, v15, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v2, v14, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v1, v2, v15

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    move-object v12, v1

    move-object/from16 v16, v2

    goto :goto_2

    :cond_2
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    new-array v2, v14, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v1, v2, v15

    move-object/from16 v16, v2

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    const/4 v6, 0x2

    if-nez v12, :cond_4

    const-string v1, "s4s-elt-must-match.2"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v3, v2, v15

    const-string v3, "(annotation?, (restriction | list | union))"

    aput-object v3, v2, v14

    invoke-virtual {v7, v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v7, v8, v0, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_5

    move v0, v6

    move/from16 v17, v14

    move/from16 v18, v15

    move/from16 v19, v18

    goto :goto_3

    :cond_5
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move/from16 v18, v14

    move/from16 v17, v15

    move/from16 v19, v17

    const/16 v0, 0x10

    goto :goto_3

    :cond_6
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move/from16 v19, v14

    move/from16 v17, v15

    move/from16 v18, v17

    const/16 v0, 0x8

    :goto_3
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "s4s-elt-must-match.1"

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v20, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v20, v4, v15

    const-string v20, "(annotation?, (restriction | list | union))"

    aput-object v20, v4, v14

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v4, v6

    invoke-virtual {v7, v2, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_7
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v12, v15, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v17, :cond_8

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    goto :goto_4

    :cond_8
    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    :goto_4
    aget-object v1, v4, v1

    move-object/from16 v20, v1

    check-cast v20, Lmf/org/apache/xerces/xni/QName;

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    aget-object v1, v4, v1

    move-object v2, v1

    check-cast v2, Ljava/util/Vector;

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v7, v1, v4, v15, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    if-eqz v3, :cond_a

    if-nez v16, :cond_9

    new-array v5, v14, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v3, v5, v15

    move-object/from16 v16, v5

    goto :goto_5

    :cond_9
    new-array v5, v6, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    aget-object v16, v16, v15

    aput-object v16, v5, v15

    aput-object v3, v5, v14

    move-object/from16 v16, v5

    :cond_a
    :goto_5
    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    move-object/from16 v23, v2

    move-object/from16 p2, v4

    move v13, v6

    move-object/from16 v5, v16

    move-object v6, v1

    goto :goto_6

    :cond_b
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const/4 v5, 0x0

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object v2, v12

    move-object/from16 p2, v4

    move v13, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    if-nez v16, :cond_c

    new-array v2, v14, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v1, v2, v15

    move-object v5, v2

    move-object/from16 v6, v22

    goto :goto_6

    :cond_c
    new-array v2, v13, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    aget-object v3, v16, v15

    aput-object v3, v2, v15

    aput-object v1, v2, v14

    move-object v5, v2

    move-object/from16 v6, v22

    goto :goto_6

    :cond_d
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 p2, v4

    move v13, v6

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    :goto_6
    if-nez v17, :cond_e

    if-eqz v18, :cond_10

    :cond_e
    if-eqz v20, :cond_10

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, v20

    move-object/from16 v24, v5

    move v5, v0

    move-object v0, v6

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    if-nez v1, :cond_f

    iget-boolean v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    if-eqz v2, :cond_f

    iput-boolean v15, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    const/4 v1, 0x0

    return-object v1

    :cond_f
    move-object/from16 v16, v1

    goto :goto_7

    :cond_10
    move-object/from16 v24, v5

    move-object v0, v6

    const/16 v16, 0x0

    :goto_7
    if-eqz v19, :cond_16

    move-object/from16 v6, v23

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_15

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v15

    :goto_8
    if-lt v3, v5, :cond_11

    move-object/from16 v22, v6

    const/4 v6, 0x3

    goto :goto_c

    :cond_11
    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lmf/org/apache/xerces/xni/QName;

    const/16 v22, 0x8

    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v23, v3

    move-object/from16 v3, p1

    move-object v14, v4

    move-object/from16 v4, v21

    move/from16 v21, v5

    move/from16 v5, v22

    move-object/from16 v22, v6

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_13

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    move v1, v15

    :goto_9
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_12

    goto :goto_a

    :cond_12
    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    const/4 v6, 0x3

    :goto_a
    add-int/lit8 v3, v23, 0x1

    move-object v4, v14

    move/from16 v5, v21

    move-object/from16 v6, v22

    const/4 v14, 0x1

    goto :goto_8

    :cond_15
    move-object/from16 v22, v6

    goto :goto_b

    :cond_16
    move-object/from16 v22, v23

    :goto_b
    const/4 v6, 0x3

    const/4 v4, 0x0

    :goto_c
    if-eqz v0, :cond_22

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    if-nez v17, :cond_1e

    if-eqz v18, :cond_17

    goto :goto_f

    :cond_17
    if-eqz v19, :cond_1d

    if-nez v4, :cond_18

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    :cond_18
    invoke-virtual {v7, v0, v9, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v2

    if-ne v2, v6, :cond_1a

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    move v1, v15

    :goto_d
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_19

    goto :goto_e

    :cond_19
    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_e
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_1c
    move-object/from16 v14, v16

    const/4 v10, 0x0

    goto :goto_13

    :cond_1d
    const/4 v10, 0x0

    goto :goto_12

    :cond_1e
    :goto_f
    if-eqz v20, :cond_20

    if-eqz v18, :cond_1f

    const-string v1, "src-simple-type.3.a"

    goto :goto_10

    :cond_1f
    const-string v1, "src-simple-type.2.a"

    :goto_10
    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_20
    if-nez v16, :cond_21

    invoke-virtual {v7, v0, v9, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v16

    :cond_21
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    move-object/from16 v14, v16

    const/4 v10, 0x0

    goto :goto_13

    :cond_22
    if-nez v17, :cond_23

    if-eqz v18, :cond_25

    :cond_23
    if-nez v20, :cond_25

    if-eqz v18, :cond_24

    const-string v1, "src-simple-type.3.b"

    goto :goto_11

    :cond_24
    const-string v1, "src-simple-type.2.b"

    :goto_11
    const/4 v10, 0x0

    invoke-virtual {v7, v1, v10, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_12

    :cond_25
    const/4 v10, 0x0

    if-eqz v19, :cond_27

    if-eqz v22, :cond_26

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_27

    :cond_26
    const-string v1, "src-union-memberTypes-or-simpleTypes"

    invoke-virtual {v7, v1, v10, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_27
    :goto_12
    move-object/from16 v14, v16

    :goto_13
    if-nez v17, :cond_28

    if-eqz v18, :cond_2a

    :cond_28
    if-nez v14, :cond_2a

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz v17, :cond_29

    goto :goto_14

    :cond_29
    const/16 v13, 0x10

    :goto_14
    invoke-direct {v7, v8, v0, v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :cond_2a
    move-object/from16 v5, p2

    if-eqz v19, :cond_2c

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2c

    :cond_2b
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-direct {v7, v8, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :cond_2c
    if-eqz v18, :cond_2d

    invoke-direct {v7, v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->isListDatatype(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v0, "cos-st-restricts.2.1"

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v8, v1, v15

    invoke-interface {v14}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v7, v0, v1, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-direct {v7, v8, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :cond_2d
    if-eqz v17, :cond_2f

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    iget-object v3, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    int-to-short v4, v11

    move-object/from16 v2, v24

    if-nez v2, :cond_2e

    move-object v6, v10

    goto :goto_15

    :cond_2e
    new-instance v6, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v10, v2

    invoke-direct {v6, v2, v10}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_15
    move-object v10, v2

    move-object/from16 v2, p1

    move-object/from16 v25, v5

    move-object v5, v14

    const/4 v13, 0x3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    goto :goto_18

    :cond_2f
    move-object/from16 v25, v5

    move v13, v6

    move-object/from16 v10, v24

    if-eqz v18, :cond_31

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    iget-object v3, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    int-to-short v4, v11

    if-nez v10, :cond_30

    const/4 v6, 0x0

    goto :goto_16

    :cond_30
    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v5, v10

    invoke-direct {v2, v10, v5}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    move-object v6, v2

    :goto_16
    move-object/from16 v2, p1

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    goto :goto_18

    :cond_31
    if-eqz v19, :cond_33

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    iget-object v3, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    int-to-short v4, v11

    if-nez v10, :cond_32

    const/4 v6, 0x0

    goto :goto_17

    :cond_32
    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v6, v10

    invoke-direct {v2, v10, v6}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    move-object v6, v2

    :goto_17
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    goto :goto_18

    :cond_33
    const/4 v1, 0x0

    :goto_18
    if-eqz v17, :cond_35

    if-eqz v0, :cond_35

    invoke-virtual {v7, v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseFacets(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-result-object v0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lmf/org/w3c/dom/Element;

    :try_start_0
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v3, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v1, v2, v3, v0, v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_1a

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    iget-object v3, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    int-to-short v4, v11

    if-nez v10, :cond_34

    const/4 v0, 0x0

    goto :goto_19

    :cond_34
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v2, v10

    invoke-direct {v0, v10, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_19
    move-object/from16 v2, p1

    move-object v5, v14

    move-object v8, v6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    move-object v0, v8

    :cond_35
    :goto_1a
    if-eqz v0, :cond_38

    if-eqz v17, :cond_36

    const-string v2, "s4s-elt-must-match.1"

    new-array v3, v13, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    aput-object v4, v3, v15

    const-string v4, "(annotation?, (simpleType?, (minExclusive | minInclusive | maxExclusive | maxInclusive | totalDigits | fractionDigits | length | minLength | maxLength | enumeration | whiteSpace | pattern)*))"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-virtual {v7, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1b

    :cond_36
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v18, :cond_37

    const-string v2, "s4s-elt-must-match.1"

    new-array v3, v13, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    aput-object v4, v3, v15

    const-string v4, "(annotation?, (simpleType?))"

    aput-object v4, v3, v5

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v7, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1b

    :cond_37
    if-eqz v19, :cond_38

    const-string v2, "s4s-elt-must-match.1"

    new-array v3, v13, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    aput-object v4, v3, v15

    const-string v4, "(annotation?, (simpleType*))"

    aput-object v4, v3, v5

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v7, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_38
    :goto_1b
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v2, v25

    invoke-virtual {v0, v2, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v1

    :cond_39
    move v13, v3

    const-string v2, "s4s-elt-must-match.1"

    new-array v3, v13, [Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v4, v3, v15

    const-string v4, "(annotation?, (restriction | list | union))"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v7, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v7, v8, v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0
.end method

.method private isListDatatype(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z
    .locals 5

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object p1

    move v0, v4

    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v3

    if-ne v3, v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v4
.end method

.method private traverseSimpleTypeDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 7

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v0, p2, v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    const-string v4, "(no name)"

    aput-object v4, v0, v3

    :cond_0
    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSimpleTypeDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v4, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    if-nez v2, :cond_1

    const-string v0, "s4s-att-must-appear"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v4, v2, v3

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    :cond_1
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p3, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p3, v3, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    instance-of p1, p2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eqz p1, :cond_4

    check-cast p2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object v3, p2

    :cond_4
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_5
    return-object v3
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object p1

    instance-of p3, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    :cond_0
    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p3, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object p1
.end method
