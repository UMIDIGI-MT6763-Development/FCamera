.class public Lmf/org/apache/html/dom/HTMLOptionElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLOptionElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLOptionElement;


# static fields
.field private static final serialVersionUID:J = -0x3e4439af5ea1121bL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDefaultSelected()Z
    .locals 1

    const-string v0, "default-selected"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDisabled()Z
    .locals 1

    const-string v0, "disabled"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 3

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLSelectElement;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;

    const-string v1, "OPTION"

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-ne v2, p0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/4 v0, -0x1

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "label"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    const-string v0, "selected"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v2, v1, Lmf/org/w3c/dom/Text;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lmf/org/w3c/dom/Text;

    invoke-interface {v2}, Lmf/org/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultSelected(Z)V
    .locals 1

    const-string v0, "default-selected"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    const-string v0, "disabled"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIndex(I)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLSelectElement;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;

    const-string v1, "OPTION"

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eq v1, p0, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, p0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_2
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "label"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    const-string v0, "selected"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object p1

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-void

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v0, v1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
