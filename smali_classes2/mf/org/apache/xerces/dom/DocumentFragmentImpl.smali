.class public Lmf/org/apache/xerces/dom/DocumentFragmentImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "DocumentFragmentImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DocumentFragment;


# static fields
.field static final serialVersionUID:J = -0x696c02ff5db4e68aL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ParentNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#document-fragment"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public normalize()V
    .locals 4

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->synchronizeChildren()V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->isNormalized(Z)V

    return-void

    :cond_2
    iget-object v1, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_3

    move-object v2, v0

    check-cast v2, Lmf/org/w3c/dom/Text;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->normalize()V

    move-object v0, v1

    goto :goto_0
.end method
