.class Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;
.super Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;
.source "XSSimpleTypeDecl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualEnumeration()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$1(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I

    move-result v2

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$1(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public item(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
