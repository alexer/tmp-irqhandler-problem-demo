
extern void IRQHandler();

typedef void (*irqhandler_t)(void);
irqhandler_t IRQHandlers[] = {
	IRQHandler,
};

int main(void)
{
	return 0;
}

