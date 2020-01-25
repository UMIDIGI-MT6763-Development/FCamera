.class public final enum Lorg/lasque/tusdk/modules/components/ComponentErrorType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/modules/components/ComponentErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TypeInputImageEmpty:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

.field public static final enum TypeNotFoundSDCard:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

.field public static final enum TypeStorageSpace:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

.field public static final enum TypeUnknow:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

.field public static final enum TypeUnsupportCamera:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

.field private static final synthetic c:[Lorg/lasque/tusdk/modules/components/ComponentErrorType;


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    const-string v1, "TypeUnknow"

    const-string v2, "Unknow error"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/lasque/tusdk/modules/components/ComponentErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeUnknow:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    new-instance v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    const-string v1, "TypeInputImageEmpty"

    const-string v2, "Can not found any input image."

    const/4 v4, 0x1

    const/16 v5, 0x3e9

    invoke-direct {v0, v1, v4, v5, v2}, Lorg/lasque/tusdk/modules/components/ComponentErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeInputImageEmpty:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    new-instance v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    const-string v1, "TypeUnsupportCamera"

    const-string v2, "The device unsupport camera."

    const/4 v5, 0x2

    const/16 v6, 0x7d1

    invoke-direct {v0, v1, v5, v6, v2}, Lorg/lasque/tusdk/modules/components/ComponentErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeUnsupportCamera:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    new-instance v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    const-string v1, "TypeStorageSpace"

    const-string v2, "Insufficient storage space."

    const/4 v6, 0x3

    const/16 v7, 0xbb9

    invoke-direct {v0, v1, v6, v7, v2}, Lorg/lasque/tusdk/modules/components/ComponentErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeStorageSpace:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    new-instance v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    const-string v1, "TypeNotFoundSDCard"

    const-string v2, "Can not found any SDCard."

    const/4 v7, 0x4

    const/16 v8, 0xbba

    invoke-direct {v0, v1, v7, v8, v2}, Lorg/lasque/tusdk/modules/components/ComponentErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeNotFoundSDCard:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    sget-object v1, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeUnknow:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeInputImageEmpty:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeUnsupportCamera:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeStorageSpace:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeNotFoundSDCard:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    aput-object v1, v0, v7

    sput-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->c:[Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->a:I

    iput-object p4, p0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/modules/components/ComponentErrorType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/modules/components/ComponentErrorType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->c:[Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/modules/components/ComponentErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    return-object v0
.end method


# virtual methods
.method public getError(Ljava/lang/Object;)Lorg/lasque/tusdk/core/utils/TuSdkError;
    .locals 3

    const-string v0, "Component Error %s(%s): %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget p1, p0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->b:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkError;

    iget v1, p0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->a:I

    invoke-direct {v0, p1, v1}, Lorg/lasque/tusdk/core/utils/TuSdkError;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->a:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->b:Ljava/lang/String;

    return-object v0
.end method
