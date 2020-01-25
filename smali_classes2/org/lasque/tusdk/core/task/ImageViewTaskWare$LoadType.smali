.class public final enum Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/task/ImageViewTaskWare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TypeBuild:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

.field public static final enum TypeDisk:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

.field public static final enum TypeMomery:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    const-string v1, "TypeMomery"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->TypeMomery:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    new-instance v0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    const-string v1, "TypeDisk"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->TypeDisk:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    new-instance v0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    const-string v1, "TypeBuild"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->TypeBuild:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    sget-object v1, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->TypeMomery:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->TypeDisk:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->TypeBuild:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->a:[Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->a:[Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    return-object v0
.end method
