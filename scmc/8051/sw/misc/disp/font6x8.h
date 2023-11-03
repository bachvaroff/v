#ifndef _FONT6X8_
#define _FONT6X8_

#ifdef FONT_TABLE
#error FONT_TABLE already defined
#endif

#define FONT_TABLE	_ft_font6x8
#define SKIPH	2u
#define SKIPL	0u

__xdata static const uint8_t FONT_TABLE[256][8] = {
	{ 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x1cu, 0x22u, 0x36u, 0x22u, 0x2au, 0x22u, 0x1cu, 0x00u },
	{ 0x1cu, 0x3eu, 0x2au, 0x3eu, 0x22u, 0x3eu, 0x1cu, 0x00u },
	{ 0x00u, 0x14u, 0x3eu, 0x3eu, 0x3eu, 0x1cu, 0x08u, 0x00u },
	{ 0x00u, 0x08u, 0x1cu, 0x3eu, 0x3eu, 0x1cu, 0x08u, 0x00u },
	{ 0x08u, 0x1cu, 0x1cu, 0x08u, 0x3eu, 0x3eu, 0x08u, 0x00u },
	{ 0x00u, 0x08u, 0x1cu, 0x3eu, 0x3eu, 0x08u, 0x1cu, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x0cu, 0x0cu, 0x00u, 0x00u, 0x00u },
	{ 0x3fu, 0x3fu, 0x3fu, 0x33u, 0x33u, 0x3fu, 0x3fu, 0x3fu },
	{ 0x00u, 0x00u, 0x1eu, 0x12u, 0x12u, 0x1eu, 0x00u, 0x00u },
	{ 0x3fu, 0x3fu, 0x21u, 0x2du, 0x2du, 0x21u, 0x3fu, 0x3fu },
	{ 0x00u, 0x38u, 0x30u, 0x2cu, 0x12u, 0x12u, 0x0cu, 0x00u },
	{ 0x1cu, 0x22u, 0x22u, 0x1cu, 0x08u, 0x1cu, 0x08u, 0x00u },
	{ 0x08u, 0x18u, 0x28u, 0x08u, 0x0cu, 0x0eu, 0x06u, 0x00u },
	{ 0x30u, 0x2cu, 0x34u, 0x2cu, 0x34u, 0x36u, 0x06u, 0x00u },
	{ 0x00u, 0x2au, 0x1cu, 0x36u, 0x1cu, 0x2au, 0x00u, 0x00u },
	{ 0x04u, 0x0cu, 0x1cu, 0x3cu, 0x1cu, 0x0cu, 0x04u, 0x00u },
	{ 0x10u, 0x18u, 0x1cu, 0x1eu, 0x1cu, 0x18u, 0x10u, 0x00u },
	{ 0x08u, 0x1cu, 0x3eu, 0x08u, 0x3eu, 0x1cu, 0x08u, 0x00u },
	{ 0x14u, 0x14u, 0x14u, 0x14u, 0x14u, 0x00u, 0x14u, 0x00u },
	{ 0x3cu, 0x2au, 0x2au, 0x2cu, 0x28u, 0x28u, 0x28u, 0x00u },
	{ 0x1cu, 0x22u, 0x0cu, 0x14u, 0x18u, 0x22u, 0x1cu, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x1eu, 0x1eu, 0x00u },
	{ 0x08u, 0x1cu, 0x3eu, 0x08u, 0x3eu, 0x1cu, 0x08u, 0x1cu },
	{ 0x08u, 0x1cu, 0x3eu, 0x08u, 0x08u, 0x08u, 0x08u, 0x00u },
	{ 0x08u, 0x08u, 0x08u, 0x08u, 0x3eu, 0x1cu, 0x08u, 0x00u },
	{ 0x00u, 0x08u, 0x18u, 0x3eu, 0x18u, 0x08u, 0x00u, 0x00u },
	{ 0x00u, 0x08u, 0x0cu, 0x3eu, 0x0cu, 0x08u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x02u, 0x02u, 0x02u, 0x3eu, 0x00u },
	{ 0x00u, 0x14u, 0x14u, 0x3eu, 0x14u, 0x14u, 0x00u, 0x00u },
	{ 0x08u, 0x08u, 0x1cu, 0x1cu, 0x3eu, 0x3eu, 0x00u, 0x00u },
	{ 0x3eu, 0x3eu, 0x1cu, 0x1cu, 0x08u, 0x08u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x08u, 0x1cu, 0x1cu, 0x08u, 0x08u, 0x00u, 0x08u, 0x00u },
	{ 0x36u, 0x36u, 0x12u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x14u, 0x3eu, 0x14u, 0x14u, 0x3eu, 0x14u, 0x00u },
	{ 0x04u, 0x1cu, 0x02u, 0x0cu, 0x10u, 0x0eu, 0x08u, 0x00u },
	{ 0x26u, 0x26u, 0x10u, 0x08u, 0x04u, 0x32u, 0x32u, 0x00u },
	{ 0x04u, 0x0au, 0x0au, 0x04u, 0x2au, 0x12u, 0x2cu, 0x00u },
	{ 0x0cu, 0x0cu, 0x04u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x08u, 0x04u, 0x04u, 0x04u, 0x04u, 0x04u, 0x08u, 0x00u },
	{ 0x04u, 0x08u, 0x08u, 0x08u, 0x08u, 0x08u, 0x04u, 0x00u },
	{ 0x00u, 0x14u, 0x1cu, 0x3eu, 0x1cu, 0x14u, 0x00u, 0x00u },
	{ 0x00u, 0x08u, 0x08u, 0x3eu, 0x08u, 0x08u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x0cu, 0x0cu, 0x04u },
	{ 0x00u, 0x00u, 0x00u, 0x3eu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x0cu, 0x0cu, 0x00u },
	{ 0x00u, 0x20u, 0x10u, 0x08u, 0x04u, 0x02u, 0x00u, 0x00u },
	{ 0x1cu, 0x22u, 0x32u, 0x2au, 0x26u, 0x22u, 0x1cu, 0x00u },
	{ 0x08u, 0x0cu, 0x08u, 0x08u, 0x08u, 0x08u, 0x1cu, 0x00u },
	{ 0x1cu, 0x22u, 0x20u, 0x18u, 0x04u, 0x02u, 0x3eu, 0x00u },
	{ 0x1cu, 0x22u, 0x20u, 0x1cu, 0x20u, 0x22u, 0x1cu, 0x00u },
	{ 0x10u, 0x18u, 0x14u, 0x12u, 0x3eu, 0x10u, 0x10u, 0x00u },
	{ 0x3eu, 0x02u, 0x02u, 0x1eu, 0x20u, 0x22u, 0x1cu, 0x00u },
	{ 0x18u, 0x04u, 0x02u, 0x1eu, 0x22u, 0x22u, 0x1cu, 0x00u },
	{ 0x3eu, 0x20u, 0x10u, 0x08u, 0x04u, 0x04u, 0x04u, 0x00u },
	{ 0x1cu, 0x22u, 0x22u, 0x1cu, 0x22u, 0x22u, 0x1cu, 0x00u },
	{ 0x1cu, 0x22u, 0x22u, 0x3cu, 0x20u, 0x10u, 0x0cu, 0x00u },
	{ 0x00u, 0x00u, 0x0cu, 0x0cu, 0x00u, 0x0cu, 0x0cu, 0x00u },
	{ 0x00u, 0x00u, 0x0cu, 0x0cu, 0x00u, 0x0cu, 0x0cu, 0x04u },
	{ 0x10u, 0x08u, 0x04u, 0x02u, 0x04u, 0x08u, 0x10u, 0x00u },
	{ 0x00u, 0x00u, 0x3eu, 0x00u, 0x00u, 0x3eu, 0x00u, 0x00u },
	{ 0x04u, 0x08u, 0x10u, 0x20u, 0x10u, 0x08u, 0x04u, 0x00u },
	{ 0x1cu, 0x22u, 0x20u, 0x18u, 0x08u, 0x00u, 0x08u, 0x00u },
	{ 0x1cu, 0x22u, 0x3au, 0x2au, 0x3au, 0x02u, 0x1cu, 0x00u },
	{ 0x1cu, 0x22u, 0x22u, 0x22u, 0x3eu, 0x22u, 0x22u, 0x00u },
	{ 0x1eu, 0x22u, 0x22u, 0x1eu, 0x22u, 0x22u, 0x1eu, 0x00u },
	{ 0x1cu, 0x22u, 0x02u, 0x02u, 0x02u, 0x22u, 0x1cu, 0x00u },
	{ 0x1eu, 0x22u, 0x22u, 0x22u, 0x22u, 0x22u, 0x1eu, 0x00u },
	{ 0x3eu, 0x02u, 0x02u, 0x1eu, 0x02u, 0x02u, 0x3eu, 0x00u },
	{ 0x3eu, 0x02u, 0x02u, 0x1eu, 0x02u, 0x02u, 0x02u, 0x00u },
	{ 0x1cu, 0x22u, 0x02u, 0x3au, 0x22u, 0x22u, 0x3cu, 0x00u },
	{ 0x22u, 0x22u, 0x22u, 0x3eu, 0x22u, 0x22u, 0x22u, 0x00u },
	{ 0x1cu, 0x08u, 0x08u, 0x08u, 0x08u, 0x08u, 0x1cu, 0x00u },
	{ 0x20u, 0x20u, 0x20u, 0x20u, 0x22u, 0x22u, 0x1cu, 0x00u },
	{ 0x22u, 0x12u, 0x0au, 0x06u, 0x0au, 0x12u, 0x22u, 0x00u },
	{ 0x02u, 0x02u, 0x02u, 0x02u, 0x02u, 0x02u, 0x3eu, 0x00u },
	{ 0x22u, 0x36u, 0x2au, 0x22u, 0x22u, 0x22u, 0x22u, 0x00u },
	{ 0x22u, 0x26u, 0x2au, 0x32u, 0x22u, 0x22u, 0x22u, 0x00u },
	{ 0x1cu, 0x22u, 0x22u, 0x22u, 0x22u, 0x22u, 0x1cu, 0x00u },
	{ 0x1eu, 0x22u, 0x22u, 0x1eu, 0x02u, 0x02u, 0x02u, 0x00u },
	{ 0x1cu, 0x22u, 0x22u, 0x22u, 0x2au, 0x12u, 0x2cu, 0x00u },
	{ 0x1eu, 0x22u, 0x22u, 0x1eu, 0x12u, 0x22u, 0x22u, 0x00u },
	{ 0x1cu, 0x22u, 0x02u, 0x1cu, 0x20u, 0x22u, 0x1cu, 0x00u },
	{ 0x3eu, 0x08u, 0x08u, 0x08u, 0x08u, 0x08u, 0x08u, 0x00u },
	{ 0x22u, 0x22u, 0x22u, 0x22u, 0x22u, 0x22u, 0x1cu, 0x00u },
	{ 0x22u, 0x22u, 0x22u, 0x22u, 0x22u, 0x14u, 0x08u, 0x00u },
	{ 0x22u, 0x22u, 0x2au, 0x2au, 0x2au, 0x2au, 0x14u, 0x00u },
	{ 0x22u, 0x22u, 0x14u, 0x08u, 0x14u, 0x22u, 0x22u, 0x00u },
	{ 0x22u, 0x22u, 0x22u, 0x14u, 0x08u, 0x08u, 0x08u, 0x00u },
	{ 0x1eu, 0x10u, 0x08u, 0x04u, 0x02u, 0x02u, 0x1eu, 0x00u },
	{ 0x1cu, 0x04u, 0x04u, 0x04u, 0x04u, 0x04u, 0x1cu, 0x00u },
	{ 0x00u, 0x02u, 0x04u, 0x08u, 0x10u, 0x20u, 0x00u, 0x00u },
	{ 0x1cu, 0x10u, 0x10u, 0x10u, 0x10u, 0x10u, 0x1cu, 0x00u },
	{ 0x08u, 0x14u, 0x22u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x3fu },
	{ 0x0cu, 0x0cu, 0x08u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x1cu, 0x20u, 0x3cu, 0x22u, 0x3cu, 0x00u },
	{ 0x02u, 0x02u, 0x1eu, 0x22u, 0x22u, 0x22u, 0x1eu, 0x00u },
	{ 0x00u, 0x00u, 0x1cu, 0x22u, 0x02u, 0x22u, 0x1cu, 0x00u },
	{ 0x20u, 0x20u, 0x3cu, 0x22u, 0x22u, 0x22u, 0x3cu, 0x00u },
	{ 0x00u, 0x00u, 0x1cu, 0x22u, 0x1eu, 0x02u, 0x1cu, 0x00u },
	{ 0x18u, 0x04u, 0x04u, 0x1eu, 0x04u, 0x04u, 0x04u, 0x00u },
	{ 0x00u, 0x00u, 0x3cu, 0x22u, 0x22u, 0x3cu, 0x20u, 0x1cu },
	{ 0x02u, 0x02u, 0x0eu, 0x12u, 0x12u, 0x12u, 0x12u, 0x00u },
	{ 0x08u, 0x00u, 0x08u, 0x08u, 0x08u, 0x08u, 0x18u, 0x00u },
	{ 0x10u, 0x00u, 0x18u, 0x10u, 0x10u, 0x10u, 0x12u, 0x0cu },
	{ 0x02u, 0x02u, 0x12u, 0x0au, 0x06u, 0x0au, 0x12u, 0x00u },
	{ 0x08u, 0x08u, 0x08u, 0x08u, 0x08u, 0x08u, 0x18u, 0x00u },
	{ 0x00u, 0x00u, 0x16u, 0x2au, 0x2au, 0x22u, 0x22u, 0x00u },
	{ 0x00u, 0x00u, 0x0eu, 0x12u, 0x12u, 0x12u, 0x12u, 0x00u },
	{ 0x00u, 0x00u, 0x1cu, 0x22u, 0x22u, 0x22u, 0x1cu, 0x00u },
	{ 0x00u, 0x00u, 0x1eu, 0x22u, 0x22u, 0x22u, 0x1eu, 0x02u },
	{ 0x00u, 0x00u, 0x3cu, 0x22u, 0x22u, 0x22u, 0x3cu, 0x20u },
	{ 0x00u, 0x00u, 0x1au, 0x24u, 0x04u, 0x04u, 0x0eu, 0x00u },
	{ 0x00u, 0x00u, 0x1cu, 0x02u, 0x1cu, 0x20u, 0x1cu, 0x00u },
	{ 0x00u, 0x04u, 0x1eu, 0x04u, 0x04u, 0x14u, 0x08u, 0x00u },
	{ 0x00u, 0x00u, 0x12u, 0x12u, 0x12u, 0x1au, 0x14u, 0x00u },
	{ 0x00u, 0x00u, 0x22u, 0x22u, 0x22u, 0x14u, 0x08u, 0x00u },
	{ 0x00u, 0x00u, 0x22u, 0x22u, 0x2au, 0x3eu, 0x14u, 0x00u },
	{ 0x00u, 0x00u, 0x12u, 0x12u, 0x0cu, 0x12u, 0x12u, 0x00u },
	{ 0x00u, 0x00u, 0x12u, 0x12u, 0x12u, 0x1cu, 0x08u, 0x06u },
	{ 0x00u, 0x00u, 0x1eu, 0x10u, 0x0cu, 0x02u, 0x1eu, 0x00u },
	{ 0x18u, 0x04u, 0x04u, 0x06u, 0x04u, 0x04u, 0x18u, 0x00u },
	{ 0x08u, 0x08u, 0x08u, 0x00u, 0x08u, 0x08u, 0x08u, 0x00u },
	{ 0x0cu, 0x10u, 0x10u, 0x30u, 0x10u, 0x10u, 0x0cu, 0x00u },
	{ 0x14u, 0x0au, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x08u, 0x1cu, 0x36u, 0x22u, 0x22u, 0x3eu, 0x00u, 0x00u },
	{ 0x1cu, 0x22u, 0x02u, 0x02u, 0x22u, 0x1cu, 0x08u, 0x0cu },
	{ 0x12u, 0x00u, 0x12u, 0x12u, 0x12u, 0x1au, 0x14u, 0x00u },
	{ 0x30u, 0x00u, 0x1cu, 0x22u, 0x1eu, 0x02u, 0x1cu, 0x00u },
	{ 0x1cu, 0x00u, 0x1cu, 0x20u, 0x3cu, 0x22u, 0x3cu, 0x00u },
	{ 0x14u, 0x00u, 0x1cu, 0x20u, 0x3cu, 0x22u, 0x3cu, 0x00u },
	{ 0x0cu, 0x00u, 0x1cu, 0x20u, 0x3cu, 0x22u, 0x3cu, 0x00u },
	{ 0x1cu, 0x14u, 0x1cu, 0x20u, 0x3cu, 0x22u, 0x3cu, 0x00u },
	{ 0x00u, 0x1cu, 0x22u, 0x02u, 0x22u, 0x1cu, 0x08u, 0x0cu },
	{ 0x1cu, 0x00u, 0x1cu, 0x22u, 0x1eu, 0x02u, 0x1cu, 0x00u },
	{ 0x14u, 0x00u, 0x1cu, 0x22u, 0x1eu, 0x02u, 0x1cu, 0x00u },
	{ 0x0cu, 0x00u, 0x1cu, 0x22u, 0x1eu, 0x02u, 0x1cu, 0x00u },
	{ 0x14u, 0x00u, 0x08u, 0x08u, 0x08u, 0x08u, 0x18u, 0x00u },
	{ 0x08u, 0x14u, 0x00u, 0x08u, 0x08u, 0x08u, 0x18u, 0x00u },
	{ 0x04u, 0x00u, 0x08u, 0x08u, 0x08u, 0x08u, 0x18u, 0x00u },
	{ 0x14u, 0x00u, 0x08u, 0x14u, 0x22u, 0x3eu, 0x22u, 0x00u },
	{ 0x1cu, 0x14u, 0x1cu, 0x36u, 0x22u, 0x3eu, 0x22u, 0x00u },
	{ 0x30u, 0x00u, 0x3eu, 0x02u, 0x1eu, 0x02u, 0x3eu, 0x00u },
	{ 0x00u, 0x00u, 0x1eu, 0x28u, 0x3eu, 0x0au, 0x3cu, 0x00u },
	{ 0x3cu, 0x0au, 0x0au, 0x3eu, 0x0au, 0x0au, 0x3au, 0x00u },
	{ 0x1cu, 0x00u, 0x0cu, 0x12u, 0x12u, 0x12u, 0x0cu, 0x00u },
	{ 0x14u, 0x00u, 0x0cu, 0x12u, 0x12u, 0x12u, 0x0cu, 0x00u },
	{ 0x06u, 0x00u, 0x0cu, 0x12u, 0x12u, 0x12u, 0x0cu, 0x00u },
	{ 0x1cu, 0x00u, 0x12u, 0x12u, 0x12u, 0x1au, 0x14u, 0x00u },
	{ 0x06u, 0x00u, 0x12u, 0x12u, 0x12u, 0x1au, 0x14u, 0x00u },
	{ 0x14u, 0x00u, 0x12u, 0x12u, 0x12u, 0x1cu, 0x08u, 0x06u },
	{ 0x12u, 0x0cu, 0x12u, 0x12u, 0x12u, 0x12u, 0x0cu, 0x00u },
	{ 0x14u, 0x00u, 0x12u, 0x12u, 0x12u, 0x12u, 0x0cu, 0x00u },
	{ 0x00u, 0x08u, 0x1cu, 0x02u, 0x02u, 0x1cu, 0x08u, 0x00u },
	{ 0x18u, 0x24u, 0x04u, 0x1eu, 0x04u, 0x24u, 0x3au, 0x00u },
	{ 0x22u, 0x14u, 0x08u, 0x3eu, 0x08u, 0x3eu, 0x08u, 0x00u },
	{ 0x06u, 0x0au, 0x0au, 0x16u, 0x3au, 0x12u, 0x12u, 0x00u },
	{ 0x10u, 0x28u, 0x08u, 0x1cu, 0x08u, 0x08u, 0x0au, 0x04u },
	{ 0x18u, 0x00u, 0x1cu, 0x20u, 0x3cu, 0x22u, 0x3cu, 0x00u },
	{ 0x18u, 0x00u, 0x08u, 0x08u, 0x08u, 0x08u, 0x18u, 0x00u },
	{ 0x18u, 0x00u, 0x0cu, 0x12u, 0x12u, 0x12u, 0x0cu, 0x00u },
	{ 0x18u, 0x00u, 0x12u, 0x12u, 0x12u, 0x1au, 0x14u, 0x00u },
	{ 0x14u, 0x0au, 0x00u, 0x0eu, 0x12u, 0x12u, 0x12u, 0x00u },
	{ 0x14u, 0x0au, 0x00u, 0x12u, 0x16u, 0x1au, 0x12u, 0x00u },
	{ 0x1cu, 0x20u, 0x3cu, 0x22u, 0x3cu, 0x00u, 0x3cu, 0x00u },
	{ 0x0cu, 0x12u, 0x12u, 0x12u, 0x0cu, 0x00u, 0x1eu, 0x00u },
	{ 0x08u, 0x00u, 0x08u, 0x0cu, 0x02u, 0x22u, 0x1cu, 0x00u },
	{ 0x00u, 0x00u, 0x3eu, 0x02u, 0x02u, 0x02u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x3fu, 0x20u, 0x20u, 0x00u, 0x00u, 0x00u },
	{ 0x02u, 0x12u, 0x0au, 0x1cu, 0x22u, 0x10u, 0x38u, 0x00u },
	{ 0x02u, 0x12u, 0x0au, 0x34u, 0x2au, 0x38u, 0x20u, 0x00u },
	{ 0x08u, 0x00u, 0x08u, 0x08u, 0x1cu, 0x1cu, 0x08u, 0x00u },
	{ 0x00u, 0x00u, 0x24u, 0x12u, 0x24u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x12u, 0x24u, 0x12u, 0x00u, 0x00u, 0x00u },
	{ 0x2au, 0x00u, 0x15u, 0x00u, 0x2au, 0x00u, 0x15u, 0x00u },
	{ 0x2au, 0x15u, 0x2au, 0x15u, 0x2au, 0x15u, 0x2au, 0x15u },
	{ 0x15u, 0x3fu, 0x2au, 0x3fu, 0x15u, 0x3fu, 0x2au, 0x3fu },
	{ 0x08u, 0x08u, 0x08u, 0x08u, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x08u, 0x08u, 0x08u, 0x0fu, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x08u, 0x0fu, 0x08u, 0x0fu, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x0au, 0x0au, 0x0au, 0x0bu, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x00u, 0x00u, 0x00u, 0x0fu, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x00u, 0x0fu, 0x08u, 0x0fu, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x0au, 0x0bu, 0x08u, 0x0bu, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x0au, 0x0au, 0x0au, 0x0au, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x00u, 0x0fu, 0x08u, 0x0bu, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x0au, 0x0bu, 0x08u, 0x0fu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x0au, 0x0au, 0x0au, 0x0fu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x08u, 0x0fu, 0x08u, 0x0fu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x0fu, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x08u, 0x08u, 0x08u, 0x38u, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x08u, 0x08u, 0x08u, 0x3fu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x3fu, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x08u, 0x08u, 0x08u, 0x38u, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x00u, 0x00u, 0x00u, 0x3fu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x08u, 0x08u, 0x08u, 0x3fu, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x08u, 0x38u, 0x08u, 0x38u, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x0au, 0x0au, 0x0au, 0x3au, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x0au, 0x3au, 0x02u, 0x3eu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x3eu, 0x02u, 0x3au, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x0au, 0x3bu, 0x00u, 0x3fu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x3fu, 0x00u, 0x3bu, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x0au, 0x3au, 0x02u, 0x3au, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x00u, 0x3fu, 0x00u, 0x3fu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x0au, 0x3bu, 0x00u, 0x3bu, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x08u, 0x3fu, 0x00u, 0x3fu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x0au, 0x0au, 0x0au, 0x3fu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x3fu, 0x00u, 0x3fu, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x00u, 0x00u, 0x00u, 0x3fu, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x0au, 0x0au, 0x0au, 0x3eu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x08u, 0x38u, 0x08u, 0x38u, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x38u, 0x08u, 0x38u, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x00u, 0x00u, 0x00u, 0x3eu, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x0au, 0x0au, 0x0au, 0x3bu, 0x0au, 0x0au, 0x0au, 0x0au },
	{ 0x08u, 0x3fu, 0x00u, 0x3fu, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x08u, 0x08u, 0x08u, 0x0fu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x38u, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x3fu, 0x3fu, 0x3fu, 0x3fu, 0x3fu, 0x3fu, 0x3fu, 0x3fu },
	{ 0x00u, 0x00u, 0x00u, 0x00u, 0x3fu, 0x3fu, 0x3fu, 0x3fu },
	{ 0x07u, 0x07u, 0x07u, 0x07u, 0x07u, 0x07u, 0x07u, 0x07u },
	{ 0x38u, 0x38u, 0x38u, 0x38u, 0x38u, 0x38u, 0x38u, 0x38u },
	{ 0x3fu, 0x3fu, 0x3fu, 0x3fu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x2cu, 0x12u, 0x12u, 0x2cu, 0x00u, 0x00u },
	{ 0x00u, 0x0eu, 0x12u, 0x0eu, 0x12u, 0x12u, 0x0eu, 0x02u },
	{ 0x1eu, 0x12u, 0x02u, 0x02u, 0x02u, 0x02u, 0x02u, 0x00u },
	{ 0x00u, 0x3eu, 0x14u, 0x14u, 0x14u, 0x14u, 0x14u, 0x00u },
	{ 0x1eu, 0x12u, 0x04u, 0x08u, 0x04u, 0x12u, 0x1eu, 0x00u },
	{ 0x00u, 0x00u, 0x3cu, 0x12u, 0x12u, 0x0cu, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x12u, 0x12u, 0x12u, 0x0eu, 0x02u, 0x02u },
	{ 0x00u, 0x00u, 0x14u, 0x0au, 0x08u, 0x08u, 0x08u, 0x00u },
	{ 0x1cu, 0x08u, 0x1cu, 0x22u, 0x1cu, 0x08u, 0x1cu, 0x00u },
	{ 0x0cu, 0x12u, 0x12u, 0x1eu, 0x12u, 0x12u, 0x0cu, 0x00u },
	{ 0x00u, 0x1cu, 0x22u, 0x22u, 0x14u, 0x14u, 0x36u, 0x00u },
	{ 0x0cu, 0x02u, 0x04u, 0x08u, 0x1cu, 0x12u, 0x0cu, 0x00u },
	{ 0x00u, 0x00u, 0x14u, 0x2au, 0x2au, 0x14u, 0x00u, 0x00u },
	{ 0x00u, 0x08u, 0x1cu, 0x2au, 0x2au, 0x1cu, 0x08u, 0x00u },
	{ 0x00u, 0x1cu, 0x02u, 0x1eu, 0x02u, 0x1cu, 0x00u, 0x00u },
	{ 0x00u, 0x0cu, 0x12u, 0x12u, 0x12u, 0x12u, 0x00u, 0x00u },
	{ 0x00u, 0x1eu, 0x00u, 0x1eu, 0x00u, 0x1eu, 0x00u, 0x00u },
	{ 0x00u, 0x08u, 0x1cu, 0x08u, 0x00u, 0x1cu, 0x00u, 0x00u },
	{ 0x02u, 0x0cu, 0x10u, 0x0cu, 0x02u, 0x00u, 0x1eu, 0x00u },
	{ 0x10u, 0x0cu, 0x02u, 0x0cu, 0x10u, 0x00u, 0x1eu, 0x00u },
	{ 0x00u, 0x10u, 0x28u, 0x08u, 0x08u, 0x08u, 0x08u, 0x08u },
	{ 0x08u, 0x08u, 0x08u, 0x08u, 0x08u, 0x0au, 0x04u, 0x00u },
	{ 0x00u, 0x08u, 0x00u, 0x3eu, 0x00u, 0x08u, 0x00u, 0x00u },
	{ 0x00u, 0x14u, 0x0au, 0x00u, 0x14u, 0x0au, 0x00u, 0x00u },
	{ 0x0cu, 0x12u, 0x12u, 0x0cu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x0cu, 0x0cu, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x04u, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x38u, 0x08u, 0x08u, 0x0au, 0x0au, 0x04u, 0x00u },
	{ 0x0au, 0x14u, 0x14u, 0x14u, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x06u, 0x08u, 0x04u, 0x0eu, 0x00u, 0x00u, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x1eu, 0x1eu, 0x1eu, 0x1eu, 0x00u, 0x00u },
	{ 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u }
};

#endif
