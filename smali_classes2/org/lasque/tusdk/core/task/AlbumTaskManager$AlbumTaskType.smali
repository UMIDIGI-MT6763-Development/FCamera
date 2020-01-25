.class public final enum Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/task/AlbumTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlbumTaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TypeFullScreen:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

.field public static final enum TypeMiniThumb:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

.field public static final enum TypeResolution:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

.field public static final enum TypeThumb:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    const-string v1, "TypeMiniThumb"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeMiniThumb:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    new-instance v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    const-string v1, "TypeThumb"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeThumb:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    new-instance v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    const-string v1, "TypeFullScreen"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeFullScreen:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    new-instance v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    const-string v1, "TypeResolution"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeResolution:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    sget-object v1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeMiniThumb:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeThumb:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeFullScreen:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->TypeResolution:Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->a:[Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->a:[Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/task/AlbumTaskManager$AlbumTaskType;

    return-object v0
.end method
