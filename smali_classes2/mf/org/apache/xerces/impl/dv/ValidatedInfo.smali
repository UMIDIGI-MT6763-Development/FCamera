.class public Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
.super Ljava/lang/Object;
.source "ValidatedInfo.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSValue;


# instance fields
.field public actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public actualValue:Ljava/lang/Object;

.field public actualValueType:S

.field public itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

.field public memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public normalizedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToPrimitiveKind(S)S
    .locals 1

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x1d

    if-gt p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 v0, 0x2a

    if-gt p0, v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    return p0
.end method

.method public static isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z
    .locals 7

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v0

    iget-short v1, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-static {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    if-ne v0, v4, :cond_0

    if-eq v1, v2, :cond_1

    :cond_0
    if-ne v0, v2, :cond_2

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    return v3

    :cond_3
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_8

    :cond_4
    iget-object p0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v1

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    if-eq v0, v1, :cond_7

    return v3

    :cond_7
    move v1, v3

    :goto_3
    if-lt v1, v0, :cond_9

    :cond_8
    return v4

    :cond_9
    invoke-interface {p0, v1}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v5

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->convertToPrimitiveKind(S)S

    move-result v6

    if-eq v5, v6, :cond_c

    if-ne v5, v4, :cond_a

    if-eq v6, v2, :cond_c

    :cond_a
    if-ne v5, v2, :cond_b

    if-ne v6, v4, :cond_b

    goto :goto_4

    :cond_b
    return v3

    :cond_c
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short v0, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getNormalizedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getActualValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getActualValueType()S

    move-result v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBuiltInKind()S

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_4

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getMemberTypeDefinitions()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    new-array v1, v1, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :goto_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSValue;->getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    :goto_2
    return-void
.end method

.method public getActualValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getActualValueType()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    return v0
.end method

.method public getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    :cond_0
    return-object v0
.end method

.method public getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public getMemberTypeDefinitions()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v1
.end method

.method public getNormalizedValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    const/16 v1, 0x2d

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    return-void
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
