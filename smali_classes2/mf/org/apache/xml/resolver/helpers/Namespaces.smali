.class public Lmf/org/apache/xml/resolver/helpers/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getNamespaceURI(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getPrefix(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getNamespaceURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNamespaceURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lmf/org/w3c/dom/Element;

    const-string v1, "xmlns"

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "xmlns"

    invoke-interface {v0, p0}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xmlns:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lmf/org/w3c/dom/Element;

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p0

    invoke-static {p0, p1}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getNamespaceURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPrefix(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
