.class final enum Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/secret/SdkValid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SdkResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ResourceBrush:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

.field public static final enum ResourceFilter:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

.field public static final enum ResourceSticker:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

.field public static final enum ResourceVideoFilter:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

.field private static final synthetic b:[Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    const-string v1, "ResourceFilter"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceFilter:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    new-instance v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    const-string v1, "ResourceSticker"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceSticker:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    new-instance v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    const-string v1, "ResourceBrush"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceBrush:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    new-instance v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    const-string v1, "ResourceVideoFilter"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceVideoFilter:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    new-array v0, v6, [Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceFilter:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceSticker:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceBrush:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceVideoFilter:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->b:[Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->b:[Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    return-object v0
.end method


# virtual methods
.method public type()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->a:I

    return v0
.end method
