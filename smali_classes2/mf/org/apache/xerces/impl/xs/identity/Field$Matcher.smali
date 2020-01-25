.class public Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;
.super Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/identity/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Matcher"
.end annotation


# instance fields
.field protected fMayMatch:Z

.field protected final fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/identity/Field;Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;Lmf/org/apache/xerces/impl/xs/identity/ValueStore;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    return-void
.end method

.method private convertToPrimitiveKind(Lmf/org/apache/xerces/xs/ShortList;)Lmf/org/apache/xerces/xs/ShortList;
    .locals 5

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result v4

    if-eq v3, v4, :cond_3

    :goto_1
    if-eq v2, v0, :cond_4

    new-array v3, v0, [S

    :goto_2
    if-lt v1, v2, :cond_2

    :goto_3
    if-lt v2, v0, :cond_1

    new-instance p1, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    array-length v0, v3

    invoke-direct {p1, v3, v0}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    return-object p1

    :cond_1
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result v1

    aput-short v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v4

    aput-short v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method private convertToPrimitiveKind(S)S
    .locals 1

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x1d

    if-gt p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/16 v0, 0x2a

    if-gt p1, v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    return p1
.end method


# virtual methods
.method protected handleContent(Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    check-cast p1, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;->getContentType()S

    move-result p1

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    const-string v1, "cvc-id.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-interface {p1, v1, v2}, Lmf/org/apache/xerces/impl/xs/identity/ValueStore;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMatchedString:Ljava/lang/Object;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMatchedString:Ljava/lang/Object;

    invoke-virtual {p0, p1, p4, p5, p2}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V

    return-void
.end method

.method protected matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V
    .locals 11

    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object p4, p4, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {p4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result p4

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    const-string p4, "KeyMatchesNillable"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v2, p4, v3}, Lmf/org/apache/xerces/impl/xs/identity/ValueStore;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result v9

    invoke-direct {p0, p3}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(Lmf/org/apache/xerces/xs/ShortList;)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v10

    move-object v8, p1

    invoke-interface/range {v5 .. v10}, Lmf/org/apache/xerces/impl/xs/identity/ValueStore;->addValue(Lmf/org/apache/xerces/impl/xs/identity/Field;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    return-void
.end method
