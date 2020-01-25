.class Lorg/lasque/tusdk/core/secret/BrushAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/secret/BrushAdapter;->asyncLoadLocalBrushes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/secret/BrushAdapter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/secret/BrushAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter$2;->a:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter$2;->a:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a(Lorg/lasque/tusdk/core/secret/BrushAdapter;Z)Z

    const-string v0, "BrushAdapter inited: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter$2;->a:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-static {v2}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a(Lorg/lasque/tusdk/core/secret/BrushAdapter;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
