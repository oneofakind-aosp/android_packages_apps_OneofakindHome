.class Lcom/sonymobile/flix/components/util/ComponentAnimation$3;
.super Lcom/sonymobile/flix/util/Animation;
.source "ComponentAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/flix/components/util/ComponentAnimation;->setZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/flix/components/util/ComponentAnimation;


# direct methods
.method constructor <init>(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation$3;->this$0:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(FF)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation$3;->this$0:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v0, v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->setZ(F)V

    .line 137
    return-void
.end method
