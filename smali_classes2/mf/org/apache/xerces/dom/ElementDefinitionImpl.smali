.class public Lmf/org/apache/xerces/dom/ElementDefinitionImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "ElementDefinitionImpl.java"


# static fields
.field static final serialVersionUID:J = -0x7436093334741c3aL


# instance fields
.field protected attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->name:Ljava/lang/String;

    new-instance p2, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v0

    iput-object v0, p1, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object p1
.end method

.method public getAttributes()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->synchronizeChildren()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0x15

    return v0
.end method
