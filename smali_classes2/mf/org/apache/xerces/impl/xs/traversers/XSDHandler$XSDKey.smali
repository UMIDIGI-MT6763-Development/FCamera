.class Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;
.super Ljava/lang/Object;
.source "XSDHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XSDKey"
.end annotation


# instance fields
.field referNS:Ljava/lang/String;

.field referType:S

.field systemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;SLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    iput-short p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referType:S

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
