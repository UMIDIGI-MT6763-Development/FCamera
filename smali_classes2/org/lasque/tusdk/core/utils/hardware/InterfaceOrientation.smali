.class public final enum Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LandscapeLeft:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field public static final enum LandscapeRight:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field public static final enum Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field public static final enum PortraitUpsideDown:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field private static final synthetic g:[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v9, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const-string v1, "Portrait"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x13b

    const/16 v8, 0x2d

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;-><init>(Ljava/lang/String;IIIIZII)V

    sput-object v9, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const-string v11, "LandscapeRight"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v14, 0x5a

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x2d

    const/16 v18, 0x87

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;-><init>(Ljava/lang/String;IIIIZII)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->LandscapeRight:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const-string v2, "PortraitUpsideDown"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/16 v5, 0xb4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x87

    const/16 v9, 0xe1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;-><init>(Ljava/lang/String;IIIIZII)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->PortraitUpsideDown:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const-string v11, "LandscapeLeft"

    const/4 v12, 0x3

    const/4 v13, 0x3

    const/16 v14, 0x10e

    const/4 v15, 0x3

    const/16 v17, 0xe1

    const/16 v18, 0x13b

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;-><init>(Ljava/lang/String;IIIIZII)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->LandscapeLeft:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->LandscapeRight:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->PortraitUpsideDown:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->LandscapeLeft:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->g:[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->a:I

    iput p4, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->c:I

    iput p5, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->b:I

    iput-boolean p6, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->d:Z

    iput p7, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->e:I

    iput p8, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->f:I

    return-void
.end method

.method public static getWithDegrees(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 5

    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->values()[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result v4

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object p0
.end method

.method public static getWithSurfaceRotation(I)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 5

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->values()[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getSurfaceRotation()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->g:[Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object v0
.end method


# virtual methods
.method public getDegree()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->c:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->a:I

    return v0
.end method

.method public getSurfaceRotation()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->b:I

    return v0
.end method

.method public isMatch(I)Z
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->e:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->f:I

    if-ge p1, v0, :cond_1

    return v1

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->e:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->f:I

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public isTransposed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->d:Z

    return v0
.end method

.method public viewDegree()I
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->c:I

    const/16 v1, 0x168

    rsub-int v0, v0, 0x168

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public viewFromToDegree(I)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->viewDegree()I

    move-result p1

    const/4 v2, 0x1

    aput p1, v0, v2

    aget p1, v0, v1

    const/16 v3, 0x168

    const/16 v4, 0x10e

    if-ne p1, v4, :cond_0

    aget p1, v0, v2

    if-nez p1, :cond_0

    aput v3, v0, v2

    goto :goto_0

    :cond_0
    aget p1, v0, v1

    if-nez p1, :cond_1

    aget p1, v0, v2

    if-ne p1, v4, :cond_1

    aput v3, v0, v1

    :cond_1
    :goto_0
    return-object v0
.end method
