.class public final enum Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/image/ImageOrientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field public static final enum DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field public static final enum Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field public static final enum LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field public static final enum Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field public static final enum RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field public static final enum Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field public static final enum UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field private static final synthetic f:[Lorg/lasque/tusdk/core/utils/image/ImageOrientation;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v8, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const-string v1, "Up"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;-><init>(Ljava/lang/String;IZIIZI)V

    sput-object v8, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const-string v10, "Down"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0xb4

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;-><init>(Ljava/lang/String;IZIIZI)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const-string v2, "Right"

    const/4 v3, 0x2

    const/16 v5, 0x5a

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;-><init>(Ljava/lang/String;IZIIZI)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const-string v10, "Left"

    const/4 v11, 0x3

    const/16 v13, 0x10e

    const/16 v14, 0x8

    const/4 v15, 0x1

    const/16 v16, 0x3

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;-><init>(Ljava/lang/String;IZIIZI)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const-string v2, "UpMirrored"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;-><init>(Ljava/lang/String;IZIIZI)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const-string v10, "DownMirrored"

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/16 v13, 0xb4

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x5

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;-><init>(Ljava/lang/String;IZIIZI)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const-string v2, "RightMirrored"

    const/4 v3, 0x6

    const/16 v5, 0x5a

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;-><init>(Ljava/lang/String;IZIIZI)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    new-instance v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const-string v10, "LeftMirrored"

    const/4 v11, 0x7

    const/16 v13, 0x10e

    const/4 v14, 0x7

    const/4 v15, 0x1

    const/16 v16, 0x7

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;-><init>(Ljava/lang/String;IZIIZI)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->DownMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->RightMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->LeftMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->f:[Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZIIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIZI)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->a:Z

    iput p4, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->b:I

    iput p5, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->c:I

    iput-boolean p6, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->d:Z

    iput p7, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->e:I

    return-void
.end method

.method public static getValue(I)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 5

    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->values()[Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getExifOrientation()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0
.end method

.method public static getValue(IZ)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 5

    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->values()[Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isMatch(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->f:[Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object v0
.end method


# virtual methods
.method public getDegree()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->b:I

    return v0
.end method

.method public getExifOrientation()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->c:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->e:I

    return v0
.end method

.method public isMatch(IZ)Z
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->b:I

    if-ne v0, p1, :cond_0

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->a:Z

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMirrored()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->a:Z

    return v0
.end method

.method public isTransposed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->d:Z

    return v0
.end method
