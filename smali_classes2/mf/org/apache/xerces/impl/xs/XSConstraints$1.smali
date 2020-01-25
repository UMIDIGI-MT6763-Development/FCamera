.class Lmf/org/apache/xerces/impl/xs/XSConstraints$1;
.super Ljava/lang/Object;
.source "XSConstraints.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XSConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    check-cast p2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v4, :cond_2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :goto_2
    return v2
.end method
