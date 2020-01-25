.class final Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper;->playSound(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper$1;->a:Landroid/content/Context;

    iput p2, p0, Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper$1;->a:Landroid/content/Context;

    iget v1, p0, Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper$1;->b:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper$1$1;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper$1$1;-><init>(Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
